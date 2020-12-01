import "package:meta/meta.dart";

import "../ilist/ilist.dart";
import "../iset/iset.dart";
import "hash.dart";

// /////////////////////////////////////////////////////////////////////////////

/// - If [isDeepEquals] is `false`, the [IList] equals operator (`==`) compares by identity.
/// - If [isDeepEquals] is `true` (the default), the [IList] equals operator (`==`) compares all items, ordered.
@immutable
class ConfigList {
  //
  /// If `false`, the equals operator (`==`) compares by identity.
  /// If `true` (the default), the equals operator (`==`) compares all items, ordered.
  final bool isDeepEquals;

  /// If `false`, the hashCode will be calculated each time it's used.
  /// If `true` (the default), the hashCode will be cached.
  /// You should turn the cache off only if may use the immutable list
  /// with mutable data.
  final bool cacheHashCode;

  const ConfigList({
    this.isDeepEquals = true,
    this.cacheHashCode = true,
  });

  ConfigList copyWith({
    bool isDeepEquals,
    bool cacheHashCode,
  }) {
    var config = ConfigList(
      isDeepEquals: isDeepEquals ?? this.isDeepEquals,
      cacheHashCode: cacheHashCode ?? this.cacheHashCode,
    );
    return (config == this) ? this : config;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfigList &&
          runtimeType == other.runtimeType &&
          isDeepEquals == other.isDeepEquals &&
          cacheHashCode == other.cacheHashCode;

  @override
  int get hashCode => hashObj2(isDeepEquals, cacheHashCode);

  @override
  String toString() => "ConfigList{"
      "isDeepEquals: $isDeepEquals, "
      "cacheHashCode: $cacheHashCode}";
}

// /////////////////////////////////////////////////////////////////////////////

/// The set configuration.
/// - If [isDeepEquals] is `false`, the [ISet] equals operator (`==`) compares by identity.
/// - If [isDeepEquals] is `true` (the default), the [ISet] equals operator (`==`) compares all items, unordered.
/// - If the [compare] function is defined, sorted outputs will use it as a comparator.
@immutable
class ConfigSet {
  //
  /// If `false`, the equals operator (`==`) compares by identity.
  /// If `true` (the default), the equals operator (`==`) compares all items, ordered.
  final bool isDeepEquals;

  /// If true, will sort the list output of items.
  final bool sort;

  /// If `false`, the hashCode will be calculated each time it's used.
  /// If `true` (the default), the hashCode will be cached.
  /// You should turn the cache off only if may use the immutable set
  /// with mutable data.
  final bool cacheHashCode;

  const ConfigSet({
    this.isDeepEquals = true,
    this.sort = true,
    this.cacheHashCode = true,
  });

  ConfigSet copyWith({
    bool isDeepEquals,
    bool sort,
    bool cacheHashCode,
  }) {
    var config = ConfigSet(
      isDeepEquals: isDeepEquals ?? this.isDeepEquals,
      sort: sort ?? this.sort,
      cacheHashCode: cacheHashCode ?? this.cacheHashCode,
    );
    return (config == this) ? this : config;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfigSet &&
          runtimeType == other.runtimeType &&
          isDeepEquals == other.isDeepEquals &&
          sort == other.sort &&
          cacheHashCode == other.cacheHashCode;

  @override
  int get hashCode => hashObj3(isDeepEquals, sort, cacheHashCode);

  @override
  String toString() => "ConfigSet{"
      "isDeepEquals: $isDeepEquals, "
      "sort: $sort, "
      "cacheHashCode: $cacheHashCode}";
}

// /////////////////////////////////////////////////////////////////////////////

/// - If [isDeepEquals] is `false`, the [IMap] equals operator (`==`) compares by identity.
/// - If [isDeepEquals] is `true` (the default), the [IMap] equals operator (`==`) compares all entries, ordered.
/// - If [sortKeys] is `true` (the default), will sort the list output of keys.
/// - If [sortValues] is `true` (the default), will sort the list output of values.
@immutable
class ConfigMap {
  //
  /// If `false`, the equals operator (`==`) compares by identity.
  /// If `true` (the default), the equals operator (`==`) compares all items, ordered.
  final bool isDeepEquals;

  /// If `true` (the default), will sort the list output of keys.
  final bool sortKeys;

  /// If `true` (the default), will sort the list output of values.
  final bool sortValues;

  /// If `false`, the hashCode will be calculated each time it's used.
  /// If `true` (the default), the hashCode will be cached.
  /// You should turn the cache off only if may use the immutable map
  /// with mutable data.
  final bool cacheHashCode;

  const ConfigMap({
    this.isDeepEquals = true,
    this.sortKeys = true,
    this.sortValues = true,
    this.cacheHashCode = true,
  });

  ConfigMap copyWith({
    bool isDeepEquals,
    bool sortKeys,
    bool sortValues,
    bool cacheHashCode,
  }) {
    var config = ConfigMap(
      isDeepEquals: isDeepEquals ?? this.isDeepEquals,
      sortKeys: sortKeys ?? this.sortKeys,
      sortValues: sortValues ?? this.sortValues,
      cacheHashCode: cacheHashCode ?? this.cacheHashCode,
    );
    return (config == this) ? this : config;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfigMap &&
          runtimeType == other.runtimeType &&
          isDeepEquals == other.isDeepEquals &&
          sortKeys == other.sortKeys &&
          sortValues == other.sortValues &&
          cacheHashCode == other.cacheHashCode;

  @override
  int get hashCode => hashObj4(isDeepEquals, sortKeys, sortValues, cacheHashCode);

  @override
  String toString() => "ConfigMap{"
      "isDeepEquals: $isDeepEquals, "
      "sortKeys: $sortKeys, "
      "sortValues: $sortValues, "
      "cacheHashCode: $cacheHashCode}";
}

// /////////////////////////////////////////////////////////////////////////////

/// - If [isDeepEquals] is `false`, the [IMap] equals operator (`==`) compares by identity.
/// - If [isDeepEquals] is `true` (the default), the [IMap] equals operator (`==`) compares all entries, ordered.
/// - If [sortKeys] is `true` (the default), will sort the list output of keys.
/// - If [sortValues] is `true` (the default), will sort the list output of values.
@immutable
class ConfigMapOfSets {
  //
  /// If `false`, the equals operator (`==`) compares by identity.
  /// If `true` (the default), the equals operator (`==`) compares all items, ordered.
  final bool isDeepEquals;

  /// If `true` (the default), will sort the list output of keys.
  final bool sortKeys;

  /// If `true` (the default), will sort the list output of values.
  final bool sortValues;

  /// If `true` (the default), sets which become empty are automatically
  /// removed, together with their keys.
  /// If `false`, empty sets and their keys are kept.
  final bool removeEmptySets;

  /// If `false`, the hashCode will be calculated each time it's used.
  /// If `true` (the default), the hashCode will be cached.
  /// You should turn the cache off only if may use the immutable map
  /// of sets with mutable data.
  final bool cacheHashCode;

  const ConfigMapOfSets({
    this.isDeepEquals = true,
    this.sortKeys = true,
    this.sortValues = true,
    this.removeEmptySets = true,
    this.cacheHashCode = true,
  });

  ConfigMap get asConfigMap => ConfigMap(
        isDeepEquals: isDeepEquals,
        sortKeys: sortValues,
        sortValues: sortValues,
        cacheHashCode: cacheHashCode,
      );

  ConfigSet get asConfigSet => ConfigSet(
        isDeepEquals: isDeepEquals,
        sort: sortValues,
        cacheHashCode: cacheHashCode,
      );

  ConfigMapOfSets copyWith({
    bool isDeepEquals,
    bool sortKeys,
    bool sortValues,
    bool removeEmptySets,
    bool cacheHashCode,
  }) {
    var config = ConfigMapOfSets(
      isDeepEquals: isDeepEquals ?? this.isDeepEquals,
      sortKeys: sortKeys ?? this.sortKeys,
      sortValues: sortValues ?? this.sortValues,
      removeEmptySets: removeEmptySets ?? this.removeEmptySets,
      cacheHashCode: cacheHashCode ?? this.cacheHashCode,
    );
    return (config == this) ? this : config;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ConfigMapOfSets &&
          runtimeType == other.runtimeType &&
          isDeepEquals == other.isDeepEquals &&
          sortKeys == other.sortKeys &&
          sortValues == other.sortValues &&
          removeEmptySets == other.removeEmptySets &&
          cacheHashCode == other.cacheHashCode;

  @override
  int get hashCode =>
      hashObj5(isDeepEquals, sortKeys, sortValues, removeEmptySets, cacheHashCode);

  @override
  String toString() => "ConfigMapOfSets{"
      "isDeepEquals: $isDeepEquals, "
      "sortKeys: $sortKeys, "
      "sortValues: $sortValues, "
      "removeEmptySets: $removeEmptySets, "
      "cacheHashCode: $cacheHashCode}";
}

// /////////////////////////////////////////////////////////////////////////////
