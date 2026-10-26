; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_file_open_32.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_file_open_32.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN48CWE23_Relative_Path_Traversal__char_file_open_323badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 4096, i1 false)
  %10 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 0
  store i8 47, ptr %10, align 16
  %11 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 1
  store i8 116, ptr %11, align 1
  %12 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 2
  store i8 109, ptr %12, align 2
  %13 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 3
  store i8 112, ptr %13, align 1
  %14 = getelementptr inbounds [4096 x i8], ptr %4, i32 0, i32 4
  store i8 47, ptr %14, align 4
  %15 = getelementptr inbounds [4096 x i8], ptr %4, i64 0, i64 0
  store ptr %15, ptr %1, align 8
  %16 = load ptr, ptr %2, align 8
  %17 = load ptr, ptr %16, align 8
  store ptr %17, ptr %5, align 8
  %18 = load ptr, ptr %5, align 8
  %19 = call i64 @strlen(ptr noundef %18) #4
  store i64 %19, ptr %6, align 8
  %20 = load i64, ptr %6, align 8
  %21 = sub i64 4096, %20
  %22 = icmp ugt i64 %21, 1
  br i1 %22, label %23, label %45

23:                                               ; preds = %0
  %24 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %24, ptr %7, align 8
  %25 = load ptr, ptr %7, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 8
  %29 = load i64, ptr %6, align 8
  %30 = getelementptr inbounds nuw i8, ptr %28, i64 %29
  %31 = load i64, ptr %6, align 8
  %32 = sub i64 4096, %31
  %33 = trunc i64 %32 to i32
  %34 = load ptr, ptr %7, align 8
  %35 = call ptr @fgets(ptr noundef %30, i32 noundef %33, ptr noundef %34)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  call void @printLine(ptr noundef @.str.2)
  %38 = load ptr, ptr %5, align 8
  %39 = load i64, ptr %6, align 8
  %40 = getelementptr inbounds nuw i8, ptr %38, i64 %39
  store i8 0, ptr %40, align 1
  br label %41

41:                                               ; preds = %37, %27
  %42 = load ptr, ptr %7, align 8
  %43 = call i32 @fclose(ptr noundef %42)
  br label %44

44:                                               ; preds = %41, %23
  br label %45

45:                                               ; preds = %44, %0
  %46 = load ptr, ptr %5, align 8
  %47 = load ptr, ptr %2, align 8
  store ptr %46, ptr %47, align 8
  %48 = load ptr, ptr %3, align 8
  %49 = load ptr, ptr %48, align 8
  store ptr %49, ptr %8, align 8
  %50 = load ptr, ptr %8, align 8
  %51 = call i32 (ptr, i32, ...) @open(ptr noundef %50, i32 noundef 66, i32 noundef 384)
  store i32 %51, ptr %9, align 4
  %52 = load i32, ptr %9, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, ptr %9, align 4
  %56 = call i32 @close(i32 noundef %55)
  br label %57

57:                                               ; preds = %54, %45
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

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
