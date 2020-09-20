import 'package:benchmark_harness/benchmark_harness.dart'
    show BenchmarkBase, ScoreEmitter;
import 'package:meta/meta.dart' show required;

abstract class ListBenchmarkBase extends BenchmarkBase {
  final int runs, size;

  const ListBenchmarkBase(
    String name, {
    @required this.runs,
    @required this.size,
    @required ScoreEmitter emitter,
  })  : assert(runs != null && runs > 0),
        assert(size != null && size >= 0),
        super(name, emitter: emitter);

  static final List<int> dummyStaticList =
      List<int>.generate(10000, (int index) => index);

  static List<int> getDummyGeneratedList({int length = 10000}) =>
      List<int>.generate(length, (int index) => index);

  @override
  void exercise() {
    for (int i = 0; i < runs; i++) run();
  }
}
