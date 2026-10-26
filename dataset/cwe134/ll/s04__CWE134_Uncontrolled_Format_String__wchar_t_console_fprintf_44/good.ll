; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_44.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_44.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@stdout = external global ptr, align 8
@stdin = external global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.2 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_fprintf_44_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i32], align 16
  store ptr @goodG2BSink, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %4 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = call ptr @wcscpy(ptr noundef %5, ptr noundef @.str) #5
  %7 = load ptr, ptr %2, align 8
  %8 = load ptr, ptr %1, align 8
  call void %7(ptr noundef %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2BSink(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @stdout, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %3, ptr noundef %4)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #2

declare i32 @fwprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i64, align 8
  store ptr @goodB2GSink, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = load ptr, ptr %1, align 8
  %7 = call i64 @wcslen(ptr noundef %6) #6
  store i64 %7, ptr %4, align 8
  %8 = load i64, ptr %4, align 8
  %9 = sub i64 100, %8
  %10 = icmp ugt i64 %9, 1
  br i1 %10, label %11, label %44

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = load i64, ptr %4, align 8
  %14 = getelementptr inbounds nuw i32, ptr %12, i64 %13
  %15 = load i64, ptr %4, align 8
  %16 = sub i64 100, %15
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr @stdin, align 8
  %19 = call ptr @fgetws(ptr noundef %14, i32 noundef %17, ptr noundef %18)
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %11
  %22 = load ptr, ptr %1, align 8
  %23 = call i64 @wcslen(ptr noundef %22) #6
  store i64 %23, ptr %4, align 8
  %24 = load i64, ptr %4, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 8
  %28 = load i64, ptr %4, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds nuw i32, ptr %27, i64 %29
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 10
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load ptr, ptr %1, align 8
  %35 = load i64, ptr %4, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds nuw i32, ptr %34, i64 %36
  store i32 0, ptr %37, align 4
  br label %38

38:                                               ; preds = %33, %26, %21
  br label %43

39:                                               ; preds = %11
  call void @printLine(ptr noundef @.str.1)
  %40 = load ptr, ptr %1, align 8
  %41 = load i64, ptr %4, align 8
  %42 = getelementptr inbounds nuw i32, ptr %40, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %39, %38
  br label %44

44:                                               ; preds = %43, %0
  %45 = load ptr, ptr %2, align 8
  %46 = load ptr, ptr %1, align 8
  call void %45(ptr noundef %46)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2GSink(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr @stdout, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %3, ptr noundef @.str.2, ptr noundef %4)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #4

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
