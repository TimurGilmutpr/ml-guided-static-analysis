; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_console_open_18.cpp'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE23_Relative_Path_Traversal/s01/CWE23_Relative_Path_Traversal__char_console_open_18.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN51CWE23_Relative_Path_Traversal__char_console_open_183badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 4096, i1 false)
  %5 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 0
  store i8 47, ptr %5, align 16
  %6 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 1
  store i8 116, ptr %6, align 1
  %7 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 2
  store i8 109, ptr %7, align 2
  %8 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 3
  store i8 112, ptr %8, align 1
  %9 = getelementptr inbounds [4096 x i8], ptr %2, i32 0, i32 4
  store i8 47, ptr %9, align 4
  %10 = getelementptr inbounds [4096 x i8], ptr %2, i64 0, i64 0
  store ptr %10, ptr %1, align 8
  br label %11

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = call i64 @strlen(ptr noundef %12) #4
  store i64 %13, ptr %3, align 8
  %14 = load i64, ptr %3, align 8
  %15 = sub i64 4096, %14
  %16 = icmp ugt i64 %15, 1
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load ptr, ptr %1, align 8
  %19 = load i64, ptr %3, align 8
  %20 = getelementptr inbounds nuw i8, ptr %18, i64 %19
  %21 = load i64, ptr %3, align 8
  %22 = sub i64 4096, %21
  %23 = trunc i64 %22 to i32
  %24 = load ptr, ptr @stdin, align 8
  %25 = call ptr @fgets(ptr noundef %20, i32 noundef %23, ptr noundef %24)
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %17
  %28 = load ptr, ptr %1, align 8
  %29 = call i64 @strlen(ptr noundef %28) #4
  store i64 %29, ptr %3, align 8
  %30 = load i64, ptr %3, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load ptr, ptr %1, align 8
  %34 = load i64, ptr %3, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 %35
  %37 = load i8, ptr %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load ptr, ptr %1, align 8
  %42 = load i64, ptr %3, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds nuw i8, ptr %41, i64 %43
  store i8 0, ptr %44, align 1
  br label %45

45:                                               ; preds = %40, %32, %27
  br label %50

46:                                               ; preds = %17
  call void @printLine(ptr noundef @.str)
  %47 = load ptr, ptr %1, align 8
  %48 = load i64, ptr %3, align 8
  %49 = getelementptr inbounds nuw i8, ptr %47, i64 %48
  store i8 0, ptr %49, align 1
  br label %50

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50, %11
  %52 = load ptr, ptr %1, align 8
  %53 = call i32 (ptr, i32, ...) @open(ptr noundef %52, i32 noundef 66, i32 noundef 384)
  store i32 %53, ptr %4, align 4
  %54 = load i32, ptr %4, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, ptr %4, align 4
  %58 = call i32 @close(i32 noundef %57)
  br label %59

59:                                               ; preds = %56, %51
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

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
