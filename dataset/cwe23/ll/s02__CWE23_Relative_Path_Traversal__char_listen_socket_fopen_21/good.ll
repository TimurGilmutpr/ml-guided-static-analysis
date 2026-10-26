; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B1StaticE = internal global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"wb+\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B2StaticE = internal global i32 0, align 4

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_214goodEv() #0 {
  call void @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L8goodG2B1Ev()
  call void @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L8goodG2B2Ev()
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L8goodG2B1Ev() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca ptr, align 8
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
  store i32 0, ptr @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B1StaticE, align 4
  %10 = load ptr, ptr %1, align 8
  %11 = call noundef ptr @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B1SourceEPc(ptr noundef %10)
  store ptr %11, ptr %1, align 8
  store ptr null, ptr %3, align 8
  %12 = load ptr, ptr %1, align 8
  %13 = call noalias ptr @fopen(ptr noundef %12, ptr noundef @.str)
  store ptr %13, ptr %3, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load ptr, ptr %3, align 8
  %18 = call i32 @fclose(ptr noundef %17)
  br label %19

19:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L8goodG2B2Ev() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i8], align 16
  %3 = alloca ptr, align 8
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
  store i32 1, ptr @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B2StaticE, align 4
  %10 = load ptr, ptr %1, align 8
  %11 = call noundef ptr @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B2SourceEPc(ptr noundef %10)
  store ptr %11, ptr %1, align 8
  store ptr null, ptr %3, align 8
  %12 = load ptr, ptr %1, align 8
  %13 = call noalias ptr @fopen(ptr noundef %12, ptr noundef @.str)
  store ptr %13, ptr %3, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %0
  %17 = load ptr, ptr %3, align 8
  %18 = call i32 @fclose(ptr noundef %17)
  br label %19

19:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: mustprogress noinline optnone uwtable
define internal noundef ptr @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B1SourceEPc(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B1StaticE, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void @printLine(ptr noundef @.str.1)
  br label %9

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = call ptr @strcat(ptr noundef %7, ptr noundef @.str.2) #5
  br label %9

9:                                                ; preds = %6, %5
  %10 = load ptr, ptr %2, align 8
  ret ptr %10
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

declare void @printLine(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #3

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define internal noundef ptr @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B2SourceEPc(ptr noundef %0) #4 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load i32, ptr @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_21L14goodG2B2StaticE, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8
  %7 = call ptr @strcat(ptr noundef %6, ptr noundef @.str.2) #5
  br label %8

8:                                                ; preds = %5, %1
  %9 = load ptr, ptr %2, align 8
  ret ptr %9
}

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
