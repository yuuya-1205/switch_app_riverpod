import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:switch_app_riverpod/data/dto/switch_dto.dart';
import 'package:switch_app_riverpod/data/repository/switch_repository.dart';
import 'package:switch_app_riverpod/domain/logic/switch_notifier.dart';
import 'package:switch_app_riverpod/domain/model/switch.dart';

import '../utils/create_container.dart';
import '../utils/mocks.mocks.dart';

const String documentId = 'x6qOk5aT9ojUgoBJrEWS';

void main() {
  late MockSwitchRepository mockSwitchRepository;
  setUp(() {
    mockSwitchRepository = MockSwitchRepository();
  });
  test(
    'switchRepositoryからデータを取得し、SwitchDtoからSwitchStateに変換するできているか確認する',
    () async {
      // Repository の getSwitchIsEnabled() が返す Futureをモックする。
      when(
        mockSwitchRepository.getSwitchIsEnabled(documentId: documentId),
      ).thenAnswer((_) => Future.value(SwitchDto(isEnabled: false)));

      // refの代わりにcreateContainerを使用する。
      // 理由：createContainerを使用することでmockを使用することができる。（置き換えることができる）
      final container = createContainer(
        overrides: [
          switchRepositoryProvider.overrideWith((_) => mockSwitchRepository),
        ],
      );

      // 初期化してインスタンスを作成する。
      final switchState = await container.read(switchNotifierProvider.future);

      // SwitchState（isEnabled: false）になっていることを確認する。
      expect(switchState, Switch(isEnabled: false));
    },
  );

  test('SwitchをOnにすると、SwitchStateがtrueになることを確認する', () async {
    // Repository の getSwitchIsEnabled() が返す Future をモックする。
    when(
      mockSwitchRepository.getSwitchIsEnabled(documentId: documentId),
    ).thenAnswer((_) => Future.value(SwitchDto(isEnabled: true)));

    when(
      mockSwitchRepository.switchOn(documentId: documentId),
    ).thenAnswer((_) async {});

    // refの代わりにcontainerを使用する。
    // SwitchRepositoryをmockに置き換えている。
    final container = createContainer(
      overrides: [
        switchRepositoryProvider.overrideWith((_) => mockSwitchRepository),
      ],
    );

    await container.read(switchNotifierProvider.notifier).switchOn();

    expect(
      container.read(switchNotifierProvider).value,
      Switch(isEnabled: true),
    );
  });

  test('SwitchをOffにすると、SwitchStateがfalseになることを確認する', () async {
    // Repository の getSwitchIsEnabled() が返す Future をモックする。
    when(
      mockSwitchRepository.getSwitchIsEnabled(documentId: documentId),
    ).thenAnswer((_) => Future.value(SwitchDto(isEnabled: false)));

    when(
      mockSwitchRepository.switchOff(documentId: documentId),
    ).thenAnswer((_) async {});

    // refの代わりにcreateContainerを使用する。
    // SwitchRepositoryをmockに置き換えている。
    final container = createContainer(
      overrides: [
        switchRepositoryProvider.overrideWith((_) => mockSwitchRepository),
      ],
    );

    await container.read(switchNotifierProvider.notifier).switchOff();

    expect(
      container.read(switchNotifierProvider).value,
      Switch(isEnabled: false),
    );
  });
}
