// Mocks generated by Mockito 5.4.4 from annotations
// in gymbuddies/test/presentation/pages/login_page_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/foundation.dart' as _i4;
import 'package:flutter/gestures.dart' as _i3;
import 'package:flutter/material.dart' as _i2;
import 'package:gymbuddies/presentation/auth/pages/login_page.dart' as _i5;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i6;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeWidget_0 extends _i1.SmartFake implements _i2.Widget {
  _FakeWidget_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({_i2.DiagnosticLevel? minLevel = _i2.DiagnosticLevel.info}) =>
      super.toString();
}

class _FakeStatelessElement_1 extends _i1.SmartFake
    implements _i2.StatelessElement {
  _FakeStatelessElement_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({_i2.DiagnosticLevel? minLevel = _i2.DiagnosticLevel.info}) =>
      super.toString();
}

class _FakeDiagnosticsNode_2 extends _i1.SmartFake
    implements _i3.DiagnosticsNode {
  _FakeDiagnosticsNode_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );

  @override
  String toString({
    _i4.TextTreeConfiguration? parentConfiguration,
    _i2.DiagnosticLevel? minLevel = _i2.DiagnosticLevel.info,
  }) =>
      super.toString();
}

/// A class which mocks [LoginPage].
///
/// See the documentation for Mockito's code generation for more information.
class MockLoginPage extends _i1.Mock implements _i5.LoginPage {
  MockLoginPage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Widget build(_i2.BuildContext? context) => (super.noSuchMethod(
        Invocation.method(
          #build,
          [context],
        ),
        returnValue: _FakeWidget_0(
          this,
          Invocation.method(
            #build,
            [context],
          ),
        ),
      ) as _i2.Widget);

  @override
  _i2.StatelessElement createElement() => (super.noSuchMethod(
        Invocation.method(
          #createElement,
          [],
        ),
        returnValue: _FakeStatelessElement_1(
          this,
          Invocation.method(
            #createElement,
            [],
          ),
        ),
      ) as _i2.StatelessElement);

  @override
  String toStringShort() => (super.noSuchMethod(
        Invocation.method(
          #toStringShort,
          [],
        ),
        returnValue: _i6.dummyValue<String>(
          this,
          Invocation.method(
            #toStringShort,
            [],
          ),
        ),
      ) as String);

  @override
  void debugFillProperties(_i3.DiagnosticPropertiesBuilder? properties) =>
      super.noSuchMethod(
        Invocation.method(
          #debugFillProperties,
          [properties],
        ),
        returnValueForMissingStub: null,
      );

  @override
  String toStringShallow({
    String? joiner = r', ',
    _i2.DiagnosticLevel? minLevel = _i2.DiagnosticLevel.debug,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #toStringShallow,
          [],
          {
            #joiner: joiner,
            #minLevel: minLevel,
          },
        ),
        returnValue: _i6.dummyValue<String>(
          this,
          Invocation.method(
            #toStringShallow,
            [],
            {
              #joiner: joiner,
              #minLevel: minLevel,
            },
          ),
        ),
      ) as String);

  @override
  String toStringDeep({
    String? prefixLineOne = r'',
    String? prefixOtherLines,
    _i2.DiagnosticLevel? minLevel = _i2.DiagnosticLevel.debug,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #toStringDeep,
          [],
          {
            #prefixLineOne: prefixLineOne,
            #prefixOtherLines: prefixOtherLines,
            #minLevel: minLevel,
          },
        ),
        returnValue: _i6.dummyValue<String>(
          this,
          Invocation.method(
            #toStringDeep,
            [],
            {
              #prefixLineOne: prefixLineOne,
              #prefixOtherLines: prefixOtherLines,
              #minLevel: minLevel,
            },
          ),
        ),
      ) as String);

  @override
  _i3.DiagnosticsNode toDiagnosticsNode({
    String? name,
    _i4.DiagnosticsTreeStyle? style,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #toDiagnosticsNode,
          [],
          {
            #name: name,
            #style: style,
          },
        ),
        returnValue: _FakeDiagnosticsNode_2(
          this,
          Invocation.method(
            #toDiagnosticsNode,
            [],
            {
              #name: name,
              #style: style,
            },
          ),
        ),
      ) as _i3.DiagnosticsNode);

  @override
  List<_i3.DiagnosticsNode> debugDescribeChildren() => (super.noSuchMethod(
        Invocation.method(
          #debugDescribeChildren,
          [],
        ),
        returnValue: <_i3.DiagnosticsNode>[],
      ) as List<_i3.DiagnosticsNode>);

  @override
  String toString({_i2.DiagnosticLevel? minLevel = _i2.DiagnosticLevel.info}) =>
      super.toString();
}
