; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s04/CWE78_OS_Command_Injection__char_listen_socket_system_13.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s04/CWE78_OS_Command_Injection__char_listen_socket_system_13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@GLOBAL_CONST_FIVE = external constant i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"*.*\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"command execution failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_listen_socket_system_13_good() #0 {
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 0
  store i8 108, ptr %3, align 16
  %4 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 1
  store i8 115, ptr %4, align 1
  %5 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 2
  store i8 32, ptr %5, align 2
  %6 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  %7 = load i32, ptr @GLOBAL_CONST_FIVE, align 4
  %8 = icmp ne i32 %7, 5
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  call void @printLine(ptr noundef @.str)
  br label %13

10:                                               ; preds = %0
  %11 = load ptr, ptr %1, align 8
  %12 = call ptr @strcat(ptr noundef %11, ptr noundef @.str.1) #5
  br label %13

13:                                               ; preds = %10, %9
  %14 = load ptr, ptr %1, align 8
  %15 = call i32 @system(ptr noundef %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  call void @printLine(ptr noundef @.str.2)
  call void @exit(i32 noundef 1) #6
  unreachable

18:                                               ; preds = %13
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare void @printLine(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #3

declare i32 @system(ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 0
  store i8 108, ptr %3, align 16
  %4 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 1
  store i8 115, ptr %4, align 1
  %5 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 2
  store i8 32, ptr %5, align 2
  %6 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  %7 = load i32, ptr @GLOBAL_CONST_FIVE, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call ptr @strcat(ptr noundef %10, ptr noundef @.str.1) #5
  br label %12

12:                                               ; preds = %9, %0
  %13 = load ptr, ptr %1, align 8
  %14 = call i32 @system(ptr noundef %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  call void @printLine(ptr noundef @.str.2)
  call void @exit(i32 noundef 1) #6
  unreachable

17:                                               ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
