; Copyright (C) 2017 The Android Open Source Project
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;      http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

.class public Test1Derived
.super Test1Base

.method public <init>()V
   .limit stack 1
   .limit locals 1
   aload_0
   invokespecial Test1Base.<init>()V
   return
.end method

.method public static test()V
    .limit stack 2
    .limit locals 0
    new Test1Derived
    dup
    invokespecial Test1Derived.<init>()V
    invokespecial Test1Derived.foo()V
    return
.end method

.method private foo()V
    .limit stack 2
    .limit locals 1
    getstatic java/lang/System/out Ljava/io/PrintStream;
    ldc "Test1Derived.foo()"
    invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V
    return
.end method
