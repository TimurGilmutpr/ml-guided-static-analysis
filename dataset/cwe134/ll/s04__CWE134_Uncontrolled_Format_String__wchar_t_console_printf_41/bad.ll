; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_printf_41.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_printf_41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_printf_41_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %4 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = call i64 @wcslen(ptr noundef %5) #4
  store i64 %6, ptr %3, align 8
  %7 = load i64, ptr %3, align 8
  %8 = sub i64 100, %7
  %9 = icmp ugt i64 %8, 1
  br i1 %9, label %10, label %43

10:                                               ; preds = %0
  %11 = load ptr, ptr %1, align 8
  %12 = load i64, ptr %3, align 8
  %13 = getelementptr inbounds nuw i32, ptr %11, i64 %12
  %14 = load i64, ptr %3, align 8
  %15 = sub i64 100, %14
  %16 = trunc i64 %15 to i32
  %17 = load ptr, ptr @stdin, align 8
  %18 = call ptr @fgetws(ptr noundef %13, i32 noundef %16, ptr noundef %17)
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %10
  %21 = load ptr, ptr %1, align 8
  %22 = call i64 @wcslen(ptr noundef %21) #4
  store i64 %22, ptr %3, align 8
  %23 = load i64, ptr %3, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load ptr, ptr %1, align 8
  %27 = load i64, ptr %3, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds nuw i32, ptr %26, i64 %28
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load ptr, ptr %1, align 8
  %34 = load i64, ptr %3, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds nuw i32, ptr %33, i64 %35
  store i32 0, ptr %36, align 4
  br label %37

37:                                               ; preds = %32, %25, %20
  br label %42

38:                                               ; preds = %10
  call void @printLine(ptr noundef @.str)
  %39 = load ptr, ptr %1, align 8
  %40 = load i64, ptr %3, align 8
  %41 = getelementptr inbounds nuw i32, ptr %39, i64 %40
  store i32 0, ptr %41, align 4
  br label %42

42:                                               ; preds = %38, %37
  br label %43

43:                                               ; preds = %42, %0
  %44 = load ptr, ptr %1, align 8
  call void @badSink(ptr noundef %44)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badSink(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = call i32 (ptr, ...) @wprintf(ptr noundef %3)
  ret void
}

declare i32 @wprintf(ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
