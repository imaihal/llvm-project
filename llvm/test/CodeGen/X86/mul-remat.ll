; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i686-- | FileCheck %s
; PR1874

define i32 @test(i32 %a, i32 %b) {
; CHECK-LABEL: test:
; CHECK:       # %bb.0: # %entry
; CHECK-NEXT:    movl {{[0-9]+}}(%esp), %eax
; CHECK-NEXT:    imull {{[0-9]+}}(%esp), %eax
; CHECK-NEXT:    retl
entry:
	%tmp3 = mul i32 %b, %a
	ret i32 %tmp3
}
