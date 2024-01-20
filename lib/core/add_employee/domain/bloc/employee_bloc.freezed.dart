// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployee,
    required TResult Function(EmployeeModel employee) updateEmployee,
    required TResult Function(EmployeeModel employee) addEmployee,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(bool isOpen) showBottomDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployee,
    TResult? Function(EmployeeModel employee)? updateEmployee,
    TResult? Function(EmployeeModel employee)? addEmployee,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(bool isOpen)? showBottomDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployee,
    TResult Function(EmployeeModel employee)? updateEmployee,
    TResult Function(EmployeeModel employee)? addEmployee,
    TResult Function(int id)? deleteEmployee,
    TResult Function(bool isOpen)? showBottomDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployee,
    required TResult Function(UpdateEmployee value) updateEmployee,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
    required TResult Function(ShowBottomDialog value) showBottomDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployee,
    TResult? Function(UpdateEmployee value)? updateEmployee,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
    TResult? Function(ShowBottomDialog value)? showBottomDialog,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployee,
    TResult Function(UpdateEmployee value)? updateEmployee,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    TResult Function(ShowBottomDialog value)? showBottomDialog,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetEmployeesImplCopyWith<$Res> {
  factory _$$GetEmployeesImplCopyWith(
          _$GetEmployeesImpl value, $Res Function(_$GetEmployeesImpl) then) =
      __$$GetEmployeesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetEmployeesImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$GetEmployeesImpl>
    implements _$$GetEmployeesImplCopyWith<$Res> {
  __$$GetEmployeesImplCopyWithImpl(
      _$GetEmployeesImpl _value, $Res Function(_$GetEmployeesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetEmployeesImpl implements GetEmployees {
  const _$GetEmployeesImpl();

  @override
  String toString() {
    return 'EmployeeEvent.getEmployee()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetEmployeesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployee,
    required TResult Function(EmployeeModel employee) updateEmployee,
    required TResult Function(EmployeeModel employee) addEmployee,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(bool isOpen) showBottomDialog,
  }) {
    return getEmployee();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployee,
    TResult? Function(EmployeeModel employee)? updateEmployee,
    TResult? Function(EmployeeModel employee)? addEmployee,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(bool isOpen)? showBottomDialog,
  }) {
    return getEmployee?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployee,
    TResult Function(EmployeeModel employee)? updateEmployee,
    TResult Function(EmployeeModel employee)? addEmployee,
    TResult Function(int id)? deleteEmployee,
    TResult Function(bool isOpen)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (getEmployee != null) {
      return getEmployee();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployee,
    required TResult Function(UpdateEmployee value) updateEmployee,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
    required TResult Function(ShowBottomDialog value) showBottomDialog,
  }) {
    return getEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployee,
    TResult? Function(UpdateEmployee value)? updateEmployee,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
    TResult? Function(ShowBottomDialog value)? showBottomDialog,
  }) {
    return getEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployee,
    TResult Function(UpdateEmployee value)? updateEmployee,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    TResult Function(ShowBottomDialog value)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (getEmployee != null) {
      return getEmployee(this);
    }
    return orElse();
  }
}

abstract class GetEmployees implements EmployeeEvent {
  const factory GetEmployees() = _$GetEmployeesImpl;
}

/// @nodoc
abstract class _$$UpdateEmployeeImplCopyWith<$Res> {
  factory _$$UpdateEmployeeImplCopyWith(_$UpdateEmployeeImpl value,
          $Res Function(_$UpdateEmployeeImpl) then) =
      __$$UpdateEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeModel employee});
}

/// @nodoc
class __$$UpdateEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$UpdateEmployeeImpl>
    implements _$$UpdateEmployeeImplCopyWith<$Res> {
  __$$UpdateEmployeeImplCopyWithImpl(
      _$UpdateEmployeeImpl _value, $Res Function(_$UpdateEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$UpdateEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
    ));
  }
}

/// @nodoc

class _$UpdateEmployeeImpl implements UpdateEmployee {
  const _$UpdateEmployeeImpl({required this.employee});

  @override
  final EmployeeModel employee;

  @override
  String toString() {
    return 'EmployeeEvent.updateEmployee(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateEmployeeImplCopyWith<_$UpdateEmployeeImpl> get copyWith =>
      __$$UpdateEmployeeImplCopyWithImpl<_$UpdateEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployee,
    required TResult Function(EmployeeModel employee) updateEmployee,
    required TResult Function(EmployeeModel employee) addEmployee,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(bool isOpen) showBottomDialog,
  }) {
    return updateEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployee,
    TResult? Function(EmployeeModel employee)? updateEmployee,
    TResult? Function(EmployeeModel employee)? addEmployee,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(bool isOpen)? showBottomDialog,
  }) {
    return updateEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployee,
    TResult Function(EmployeeModel employee)? updateEmployee,
    TResult Function(EmployeeModel employee)? addEmployee,
    TResult Function(int id)? deleteEmployee,
    TResult Function(bool isOpen)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (updateEmployee != null) {
      return updateEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployee,
    required TResult Function(UpdateEmployee value) updateEmployee,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
    required TResult Function(ShowBottomDialog value) showBottomDialog,
  }) {
    return updateEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployee,
    TResult? Function(UpdateEmployee value)? updateEmployee,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
    TResult? Function(ShowBottomDialog value)? showBottomDialog,
  }) {
    return updateEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployee,
    TResult Function(UpdateEmployee value)? updateEmployee,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    TResult Function(ShowBottomDialog value)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (updateEmployee != null) {
      return updateEmployee(this);
    }
    return orElse();
  }
}

abstract class UpdateEmployee implements EmployeeEvent {
  const factory UpdateEmployee({required final EmployeeModel employee}) =
      _$UpdateEmployeeImpl;

  EmployeeModel get employee;
  @JsonKey(ignore: true)
  _$$UpdateEmployeeImplCopyWith<_$UpdateEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddEmployeeImplCopyWith<$Res> {
  factory _$$AddEmployeeImplCopyWith(
          _$AddEmployeeImpl value, $Res Function(_$AddEmployeeImpl) then) =
      __$$AddEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EmployeeModel employee});
}

/// @nodoc
class __$$AddEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$AddEmployeeImpl>
    implements _$$AddEmployeeImplCopyWith<$Res> {
  __$$AddEmployeeImplCopyWithImpl(
      _$AddEmployeeImpl _value, $Res Function(_$AddEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employee = null,
  }) {
    return _then(_$AddEmployeeImpl(
      employee: null == employee
          ? _value.employee
          : employee // ignore: cast_nullable_to_non_nullable
              as EmployeeModel,
    ));
  }
}

/// @nodoc

class _$AddEmployeeImpl implements AddEmployee {
  const _$AddEmployeeImpl({required this.employee});

  @override
  final EmployeeModel employee;

  @override
  String toString() {
    return 'EmployeeEvent.addEmployee(employee: $employee)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddEmployeeImpl &&
            (identical(other.employee, employee) ||
                other.employee == employee));
  }

  @override
  int get hashCode => Object.hash(runtimeType, employee);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      __$$AddEmployeeImplCopyWithImpl<_$AddEmployeeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployee,
    required TResult Function(EmployeeModel employee) updateEmployee,
    required TResult Function(EmployeeModel employee) addEmployee,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(bool isOpen) showBottomDialog,
  }) {
    return addEmployee(employee);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployee,
    TResult? Function(EmployeeModel employee)? updateEmployee,
    TResult? Function(EmployeeModel employee)? addEmployee,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(bool isOpen)? showBottomDialog,
  }) {
    return addEmployee?.call(employee);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployee,
    TResult Function(EmployeeModel employee)? updateEmployee,
    TResult Function(EmployeeModel employee)? addEmployee,
    TResult Function(int id)? deleteEmployee,
    TResult Function(bool isOpen)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(employee);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployee,
    required TResult Function(UpdateEmployee value) updateEmployee,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
    required TResult Function(ShowBottomDialog value) showBottomDialog,
  }) {
    return addEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployee,
    TResult? Function(UpdateEmployee value)? updateEmployee,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
    TResult? Function(ShowBottomDialog value)? showBottomDialog,
  }) {
    return addEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployee,
    TResult Function(UpdateEmployee value)? updateEmployee,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    TResult Function(ShowBottomDialog value)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (addEmployee != null) {
      return addEmployee(this);
    }
    return orElse();
  }
}

abstract class AddEmployee implements EmployeeEvent {
  const factory AddEmployee({required final EmployeeModel employee}) =
      _$AddEmployeeImpl;

  EmployeeModel get employee;
  @JsonKey(ignore: true)
  _$$AddEmployeeImplCopyWith<_$AddEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteEmployeeImplCopyWith<$Res> {
  factory _$$DeleteEmployeeImplCopyWith(_$DeleteEmployeeImpl value,
          $Res Function(_$DeleteEmployeeImpl) then) =
      __$$DeleteEmployeeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteEmployeeImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$DeleteEmployeeImpl>
    implements _$$DeleteEmployeeImplCopyWith<$Res> {
  __$$DeleteEmployeeImplCopyWithImpl(
      _$DeleteEmployeeImpl _value, $Res Function(_$DeleteEmployeeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteEmployeeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteEmployeeImpl implements DeleteEmployee {
  const _$DeleteEmployeeImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'EmployeeEvent.deleteEmployee(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteEmployeeImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      __$$DeleteEmployeeImplCopyWithImpl<_$DeleteEmployeeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployee,
    required TResult Function(EmployeeModel employee) updateEmployee,
    required TResult Function(EmployeeModel employee) addEmployee,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(bool isOpen) showBottomDialog,
  }) {
    return deleteEmployee(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployee,
    TResult? Function(EmployeeModel employee)? updateEmployee,
    TResult? Function(EmployeeModel employee)? addEmployee,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(bool isOpen)? showBottomDialog,
  }) {
    return deleteEmployee?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployee,
    TResult Function(EmployeeModel employee)? updateEmployee,
    TResult Function(EmployeeModel employee)? addEmployee,
    TResult Function(int id)? deleteEmployee,
    TResult Function(bool isOpen)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployee,
    required TResult Function(UpdateEmployee value) updateEmployee,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
    required TResult Function(ShowBottomDialog value) showBottomDialog,
  }) {
    return deleteEmployee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployee,
    TResult? Function(UpdateEmployee value)? updateEmployee,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
    TResult? Function(ShowBottomDialog value)? showBottomDialog,
  }) {
    return deleteEmployee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployee,
    TResult Function(UpdateEmployee value)? updateEmployee,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    TResult Function(ShowBottomDialog value)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (deleteEmployee != null) {
      return deleteEmployee(this);
    }
    return orElse();
  }
}

abstract class DeleteEmployee implements EmployeeEvent {
  const factory DeleteEmployee({required final int id}) = _$DeleteEmployeeImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteEmployeeImplCopyWith<_$DeleteEmployeeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShowBottomDialogImplCopyWith<$Res> {
  factory _$$ShowBottomDialogImplCopyWith(_$ShowBottomDialogImpl value,
          $Res Function(_$ShowBottomDialogImpl) then) =
      __$$ShowBottomDialogImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isOpen});
}

/// @nodoc
class __$$ShowBottomDialogImplCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$ShowBottomDialogImpl>
    implements _$$ShowBottomDialogImplCopyWith<$Res> {
  __$$ShowBottomDialogImplCopyWithImpl(_$ShowBottomDialogImpl _value,
      $Res Function(_$ShowBottomDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = null,
  }) {
    return _then(_$ShowBottomDialogImpl(
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowBottomDialogImpl implements ShowBottomDialog {
  const _$ShowBottomDialogImpl({required this.isOpen});

  @override
  final bool isOpen;

  @override
  String toString() {
    return 'EmployeeEvent.showBottomDialog(isOpen: $isOpen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowBottomDialogImpl &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOpen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowBottomDialogImplCopyWith<_$ShowBottomDialogImpl> get copyWith =>
      __$$ShowBottomDialogImplCopyWithImpl<_$ShowBottomDialogImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getEmployee,
    required TResult Function(EmployeeModel employee) updateEmployee,
    required TResult Function(EmployeeModel employee) addEmployee,
    required TResult Function(int id) deleteEmployee,
    required TResult Function(bool isOpen) showBottomDialog,
  }) {
    return showBottomDialog(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getEmployee,
    TResult? Function(EmployeeModel employee)? updateEmployee,
    TResult? Function(EmployeeModel employee)? addEmployee,
    TResult? Function(int id)? deleteEmployee,
    TResult? Function(bool isOpen)? showBottomDialog,
  }) {
    return showBottomDialog?.call(isOpen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getEmployee,
    TResult Function(EmployeeModel employee)? updateEmployee,
    TResult Function(EmployeeModel employee)? addEmployee,
    TResult Function(int id)? deleteEmployee,
    TResult Function(bool isOpen)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (showBottomDialog != null) {
      return showBottomDialog(isOpen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetEmployees value) getEmployee,
    required TResult Function(UpdateEmployee value) updateEmployee,
    required TResult Function(AddEmployee value) addEmployee,
    required TResult Function(DeleteEmployee value) deleteEmployee,
    required TResult Function(ShowBottomDialog value) showBottomDialog,
  }) {
    return showBottomDialog(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetEmployees value)? getEmployee,
    TResult? Function(UpdateEmployee value)? updateEmployee,
    TResult? Function(AddEmployee value)? addEmployee,
    TResult? Function(DeleteEmployee value)? deleteEmployee,
    TResult? Function(ShowBottomDialog value)? showBottomDialog,
  }) {
    return showBottomDialog?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetEmployees value)? getEmployee,
    TResult Function(UpdateEmployee value)? updateEmployee,
    TResult Function(AddEmployee value)? addEmployee,
    TResult Function(DeleteEmployee value)? deleteEmployee,
    TResult Function(ShowBottomDialog value)? showBottomDialog,
    required TResult orElse(),
  }) {
    if (showBottomDialog != null) {
      return showBottomDialog(this);
    }
    return orElse();
  }
}

abstract class ShowBottomDialog implements EmployeeEvent {
  const factory ShowBottomDialog({required final bool isOpen}) =
      _$ShowBottomDialogImpl;

  bool get isOpen;
  @JsonKey(ignore: true)
  _$$ShowBottomDialogImplCopyWith<_$ShowBottomDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<EmployeeModel> get currentEmployeeModelList =>
      throw _privateConstructorUsedError;
  List<EmployeeModel> get previousEmployeeModelList =>
      throw _privateConstructorUsedError;
  int get totalRecords => throw _privateConstructorUsedError;
  bool get shouldShowRoleDialog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeStateCopyWith<EmployeeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<EmployeeModel> currentEmployeeModelList,
      List<EmployeeModel> previousEmployeeModelList,
      int totalRecords,
      bool shouldShowRoleDialog});
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentEmployeeModelList = null,
    Object? previousEmployeeModelList = null,
    Object? totalRecords = null,
    Object? shouldShowRoleDialog = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentEmployeeModelList: null == currentEmployeeModelList
          ? _value.currentEmployeeModelList
          : currentEmployeeModelList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      previousEmployeeModelList: null == previousEmployeeModelList
          ? _value.previousEmployeeModelList
          : previousEmployeeModelList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      totalRecords: null == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      shouldShowRoleDialog: null == shouldShowRoleDialog
          ? _value.shouldShowRoleDialog
          : shouldShowRoleDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EmployeeStateImplCopyWith<$Res>
    implements $EmployeeStateCopyWith<$Res> {
  factory _$$EmployeeStateImplCopyWith(
          _$EmployeeStateImpl value, $Res Function(_$EmployeeStateImpl) then) =
      __$$EmployeeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<EmployeeModel> currentEmployeeModelList,
      List<EmployeeModel> previousEmployeeModelList,
      int totalRecords,
      bool shouldShowRoleDialog});
}

/// @nodoc
class __$$EmployeeStateImplCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$EmployeeStateImpl>
    implements _$$EmployeeStateImplCopyWith<$Res> {
  __$$EmployeeStateImplCopyWithImpl(
      _$EmployeeStateImpl _value, $Res Function(_$EmployeeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? currentEmployeeModelList = null,
    Object? previousEmployeeModelList = null,
    Object? totalRecords = null,
    Object? shouldShowRoleDialog = null,
  }) {
    return _then(_$EmployeeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      currentEmployeeModelList: null == currentEmployeeModelList
          ? _value._currentEmployeeModelList
          : currentEmployeeModelList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      previousEmployeeModelList: null == previousEmployeeModelList
          ? _value._previousEmployeeModelList
          : previousEmployeeModelList // ignore: cast_nullable_to_non_nullable
              as List<EmployeeModel>,
      totalRecords: null == totalRecords
          ? _value.totalRecords
          : totalRecords // ignore: cast_nullable_to_non_nullable
              as int,
      shouldShowRoleDialog: null == shouldShowRoleDialog
          ? _value.shouldShowRoleDialog
          : shouldShowRoleDialog // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EmployeeStateImpl implements _EmployeeState {
  const _$EmployeeStateImpl(
      {required this.isLoading,
      required final List<EmployeeModel> currentEmployeeModelList,
      required final List<EmployeeModel> previousEmployeeModelList,
      required this.totalRecords,
      required this.shouldShowRoleDialog})
      : _currentEmployeeModelList = currentEmployeeModelList,
        _previousEmployeeModelList = previousEmployeeModelList;

  @override
  final bool isLoading;
  final List<EmployeeModel> _currentEmployeeModelList;
  @override
  List<EmployeeModel> get currentEmployeeModelList {
    if (_currentEmployeeModelList is EqualUnmodifiableListView)
      return _currentEmployeeModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_currentEmployeeModelList);
  }

  final List<EmployeeModel> _previousEmployeeModelList;
  @override
  List<EmployeeModel> get previousEmployeeModelList {
    if (_previousEmployeeModelList is EqualUnmodifiableListView)
      return _previousEmployeeModelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_previousEmployeeModelList);
  }

  @override
  final int totalRecords;
  @override
  final bool shouldShowRoleDialog;

  @override
  String toString() {
    return 'EmployeeState(isLoading: $isLoading, currentEmployeeModelList: $currentEmployeeModelList, previousEmployeeModelList: $previousEmployeeModelList, totalRecords: $totalRecords, shouldShowRoleDialog: $shouldShowRoleDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmployeeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(
                other._currentEmployeeModelList, _currentEmployeeModelList) &&
            const DeepCollectionEquality().equals(
                other._previousEmployeeModelList, _previousEmployeeModelList) &&
            (identical(other.totalRecords, totalRecords) ||
                other.totalRecords == totalRecords) &&
            (identical(other.shouldShowRoleDialog, shouldShowRoleDialog) ||
                other.shouldShowRoleDialog == shouldShowRoleDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_currentEmployeeModelList),
      const DeepCollectionEquality().hash(_previousEmployeeModelList),
      totalRecords,
      shouldShowRoleDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      __$$EmployeeStateImplCopyWithImpl<_$EmployeeStateImpl>(this, _$identity);
}

abstract class _EmployeeState implements EmployeeState {
  const factory _EmployeeState(
      {required final bool isLoading,
      required final List<EmployeeModel> currentEmployeeModelList,
      required final List<EmployeeModel> previousEmployeeModelList,
      required final int totalRecords,
      required final bool shouldShowRoleDialog}) = _$EmployeeStateImpl;

  @override
  bool get isLoading;
  @override
  List<EmployeeModel> get currentEmployeeModelList;
  @override
  List<EmployeeModel> get previousEmployeeModelList;
  @override
  int get totalRecords;
  @override
  bool get shouldShowRoleDialog;
  @override
  @JsonKey(ignore: true)
  _$$EmployeeStateImplCopyWith<_$EmployeeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
