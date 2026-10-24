; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_snprintf_04.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_snprintf_04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_snprintf_04_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = load ptr, ptr %1, align 8
  %7 = call i64 @strlen(ptr noundef %6) #5
  store i64 %7, ptr %3, align 8
  %8 = load i64, ptr %3, align 8
  %9 = sub i64 100, %8
  %10 = icmp ugt i64 %9, 1
  br i1 %10, label %11, label %45

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = load i64, ptr %3, align 8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 %13
  %15 = load i64, ptr %3, align 8
  %16 = sub i64 100, %15
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr @stdin, align 8
  %19 = call ptr @fgets(ptr noundef %14, i32 noundef %17, ptr noundef %18)
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %11
  %22 = load ptr, ptr %1, align 8
  %23 = call i64 @strlen(ptr noundef %22) #5
  store i64 %23, ptr %3, align 8
  %24 = load i64, ptr %3, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 8
  %28 = load i64, ptr %3, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 %29
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load ptr, ptr %1, align 8
  %36 = load i64, ptr %3, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 %37
  store i8 0, ptr %38, align 1
  br label %39

39:                                               ; preds = %34, %26, %21
  br label %44

40:                                               ; preds = %11
  call void @printLine(ptr noundef @.str)
  %41 = load ptr, ptr %1, align 8
  %42 = load i64, ptr %3, align 8
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  store i8 0, ptr %43, align 1
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44, %0
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %46 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  %47 = load ptr, ptr %1, align 8
  %48 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %46, i64 noundef 99, ptr noundef @.str.1, ptr noundef %47) #6
  %49 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  call void @printLine(ptr noundef %49)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = load ptr, ptr %1, align 8
  %7 = call i64 @strlen(ptr noundef %6) #5
  store i64 %7, ptr %3, align 8
  %8 = load i64, ptr %3, align 8
  %9 = sub i64 100, %8
  %10 = icmp ugt i64 %9, 1
  br i1 %10, label %11, label %45

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = load i64, ptr %3, align 8
  %14 = getelementptr inbounds nuw i8, ptr %12, i64 %13
  %15 = load i64, ptr %3, align 8
  %16 = sub i64 100, %15
  %17 = trunc i64 %16 to i32
  %18 = load ptr, ptr @stdin, align 8
  %19 = call ptr @fgets(ptr noundef %14, i32 noundef %17, ptr noundef %18)
  %20 = icmp ne ptr %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %11
  %22 = load ptr, ptr %1, align 8
  %23 = call i64 @strlen(ptr noundef %22) #5
  store i64 %23, ptr %3, align 8
  %24 = load i64, ptr %3, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = load ptr, ptr %1, align 8
  %28 = load i64, ptr %3, align 8
  %29 = sub i64 %28, 1
  %30 = getelementptr inbounds nuw i8, ptr %27, i64 %29
  %31 = load i8, ptr %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load ptr, ptr %1, align 8
  %36 = load i64, ptr %3, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds nuw i8, ptr %35, i64 %37
  store i8 0, ptr %38, align 1
  br label %39

39:                                               ; preds = %34, %26, %21
  br label %44

40:                                               ; preds = %11
  call void @printLine(ptr noundef @.str)
  %41 = load ptr, ptr %1, align 8
  %42 = load i64, ptr %3, align 8
  %43 = getelementptr inbounds nuw i8, ptr %41, i64 %42
  store i8 0, ptr %43, align 1
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44, %0
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %46 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  %47 = load ptr, ptr %1, align 8
  %48 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %46, i64 noundef 99, ptr noundef @.str.1, ptr noundef %47) #6
  %49 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  call void @printLine(ptr noundef %49)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #6
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %8 = load ptr, ptr %1, align 8
  %9 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %7, i64 noundef 99, ptr noundef %8) #6
  %10 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %10)
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load ptr, ptr %1, align 8
  %6 = call ptr @strcpy(ptr noundef %5, ptr noundef @.str.2) #6
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %7 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %8 = load ptr, ptr %1, align 8
  %9 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %7, i64 noundef 99, ptr noundef %8) #6
  %10 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %10)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
