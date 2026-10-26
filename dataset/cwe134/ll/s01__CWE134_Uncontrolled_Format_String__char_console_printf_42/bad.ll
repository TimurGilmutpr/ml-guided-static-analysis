; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_printf_42.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_printf_42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_42_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = call ptr @badSource(ptr noundef %4)
  store ptr %5, ptr %1, align 8
  %6 = load ptr, ptr %1, align 8
  %7 = call i32 (ptr, ...) @printf(ptr noundef %6)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @badSource(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i64 @strlen(ptr noundef %4) #4
  store i64 %5, ptr %3, align 8
  %6 = load i64, ptr %3, align 8
  %7 = sub i64 100, %6
  %8 = icmp ugt i64 %7, 1
  br i1 %8, label %9, label %43

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = load i64, ptr %3, align 8
  %12 = getelementptr inbounds nuw i8, ptr %10, i64 %11
  %13 = load i64, ptr %3, align 8
  %14 = sub i64 100, %13
  %15 = trunc i64 %14 to i32
  %16 = load ptr, ptr @stdin, align 8
  %17 = call ptr @fgets(ptr noundef %12, i32 noundef %15, ptr noundef %16)
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %9
  %20 = load ptr, ptr %2, align 8
  %21 = call i64 @strlen(ptr noundef %20) #4
  store i64 %21, ptr %3, align 8
  %22 = load i64, ptr %3, align 8
  %23 = icmp ugt i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load ptr, ptr %2, align 8
  %26 = load i64, ptr %3, align 8
  %27 = sub i64 %26, 1
  %28 = getelementptr inbounds nuw i8, ptr %25, i64 %27
  %29 = load i8, ptr %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load ptr, ptr %2, align 8
  %34 = load i64, ptr %3, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 %35
  store i8 0, ptr %36, align 1
  br label %37

37:                                               ; preds = %32, %24, %19
  br label %42

38:                                               ; preds = %9
  call void @printLine(ptr noundef @.str)
  %39 = load ptr, ptr %2, align 8
  %40 = load i64, ptr %3, align 8
  %41 = getelementptr inbounds nuw i8, ptr %39, i64 %40
  store i8 0, ptr %41, align 1
  br label %42

42:                                               ; preds = %38, %37
  br label %43

43:                                               ; preds = %42, %1
  %44 = load ptr, ptr %2, align 8
  ret ptr %44
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

declare void @printLine(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
