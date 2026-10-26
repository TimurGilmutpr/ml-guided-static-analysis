; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_file_fopen_45.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_file_fopen_45.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@_ZN49CWE23_Relative_Path_Traversal__char_file_fopen_45L7badDataE = internal global ptr null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN49CWE23_Relative_Path_Traversal__char_file_fopen_453badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
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
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @strlen(ptr noundef %11) #4
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  %14 = sub i64 4096, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %38

16:                                               ; preds = %0
  %17 = call noalias ptr @fopen(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %17, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load ptr, ptr %1, align 8
  %22 = load i64, ptr %3, align 8
  %23 = getelementptr inbounds nuw i8, ptr %21, i64 %22
  %24 = load i64, ptr %3, align 8
  %25 = sub i64 4096, %24
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr %4, align 8
  %28 = call ptr @fgets(ptr noundef %23, i32 noundef %26, ptr noundef %27)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  call void @printLine(ptr noundef @.str.2)
  %31 = load ptr, ptr %1, align 8
  %32 = load i64, ptr %3, align 8
  %33 = getelementptr inbounds nuw i8, ptr %31, i64 %32
  store i8 0, ptr %33, align 1
  br label %34

34:                                               ; preds = %30, %20
  %35 = load ptr, ptr %4, align 8
  %36 = call i32 @fclose(ptr noundef %35)
  br label %37

37:                                               ; preds = %34, %16
  br label %38

38:                                               ; preds = %37, %0
  %39 = load ptr, ptr %1, align 8
  store ptr %39, ptr @_ZN49CWE23_Relative_Path_Traversal__char_file_fopen_45L7badDataE, align 8
  call void @_ZN49CWE23_Relative_Path_Traversal__char_file_fopen_45L7badSinkEv()
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

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN49CWE23_Relative_Path_Traversal__char_file_fopen_45L7badSinkEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @_ZN49CWE23_Relative_Path_Traversal__char_file_fopen_45L7badDataE, align 8
  store ptr %3, ptr %1, align 8
  store ptr null, ptr %2, align 8
  %4 = load ptr, ptr %1, align 8
  %5 = call noalias ptr @fopen(ptr noundef %4, ptr noundef @.str.3)
  store ptr %5, ptr %2, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %2, align 8
  %10 = call i32 @fclose(ptr noundef %9)
  br label %11

11:                                               ; preds = %8, %0
  ret void
}

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
