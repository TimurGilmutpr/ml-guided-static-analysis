; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_console_open_45.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_console_open_45.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@_ZN51CWE23_Relative_Path_Traversal__char_console_open_45L7badDataE = internal global ptr null, align 8

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN51CWE23_Relative_Path_Traversal__char_console_open_453badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 4096, i1 false)
  %4 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 0
  store i8 47, ptr %4, align 16
  %5 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 1
  store i8 116, ptr %5, align 1
  %6 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 2
  store i8 109, ptr %6, align 2
  %7 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 3
  store i8 112, ptr %7, align 1
  %8 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 4
  store i8 47, ptr %8, align 4
  %9 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @strlen(ptr noundef %10) #4
  store i64 %11, ptr %3, align 8
  %12 = load i64, ptr %3, align 8
  %13 = sub i64 4096, %12
  %14 = icmp ugt i64 %13, 1
  br i1 %14, label %15, label %49

15:                                               ; preds = %0
  %16 = load ptr, ptr %1, align 8
  %17 = load i64, ptr %3, align 8
  %18 = getelementptr inbounds nuw i8, ptr %16, i64 %17
  %19 = load i64, ptr %3, align 8
  %20 = sub i64 4096, %19
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr @stdin, align 8
  %23 = call ptr @fgets(ptr noundef %18, i32 noundef %21, ptr noundef %22)
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %44

25:                                               ; preds = %15
  %26 = load ptr, ptr %1, align 8
  %27 = call i64 @strlen(ptr noundef %26) #4
  store i64 %27, ptr %3, align 8
  %28 = load i64, ptr %3, align 8
  %29 = icmp ugt i64 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load ptr, ptr %1, align 8
  %32 = load i64, ptr %3, align 8
  %33 = sub i64 %32, 1
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 %33
  %35 = load i8, ptr %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load ptr, ptr %1, align 8
  %40 = load i64, ptr %3, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds nuw i8, ptr %39, i64 %41
  store i8 0, ptr %42, align 1
  br label %43

43:                                               ; preds = %38, %30, %25
  br label %48

44:                                               ; preds = %15
  call void @printLine(ptr noundef @.str)
  %45 = load ptr, ptr %1, align 8
  %46 = load i64, ptr %3, align 8
  %47 = getelementptr inbounds nuw i8, ptr %45, i64 %46
  store i8 0, ptr %47, align 1
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %0
  %50 = load ptr, ptr %1, align 8
  store ptr %50, ptr @_ZN51CWE23_Relative_Path_Traversal__char_console_open_45L7badDataE, align 8
  call void @_ZN51CWE23_Relative_Path_Traversal__char_console_open_45L7badSinkEv()
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN51CWE23_Relative_Path_Traversal__char_console_open_45L7badSinkEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca i32, align 4
  %3 = load ptr, ptr @_ZN51CWE23_Relative_Path_Traversal__char_console_open_45L7badDataE, align 8
  store ptr %3, ptr %1, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = call i32 (ptr, i32, ...) @open(ptr noundef %4, i32 noundef 66, i32 noundef 384)
  store i32 %5, ptr %2, align 4
  %6 = load i32, ptr %2, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, ptr %2, align 4
  %10 = call i32 @close(i32 noundef %9)
  br label %11

11:                                               ; preds = %8, %0
  ret void
}

declare i32 @open(ptr noundef, i32 noundef, ...) #3

declare i32 @close(i32 noundef) #3

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
