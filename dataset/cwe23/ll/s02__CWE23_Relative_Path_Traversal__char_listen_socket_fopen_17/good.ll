; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_fopen_17.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s02/CWE23_Relative_Path_Traversal__char_listen_socket_fopen_17.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"file.txt\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"wb+\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_174goodEv() #0 {
  call void @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_17L7goodG2BEv()
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN58CWE23_Relative_Path_Traversal__char_listen_socket_fopen_17L7goodG2BEv() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [4096 x i8], align 16
  %4 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 4096, i1 false)
  %5 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 0
  store i8 47, ptr %5, align 16
  %6 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 1
  store i8 116, ptr %6, align 1
  %7 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 2
  store i8 109, ptr %7, align 2
  %8 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 3
  store i8 112, ptr %8, align 1
  %9 = getelementptr inbounds [4096 x i8], ptr %3, i32 0, i32 4
  store i8 47, ptr %9, align 4
  %10 = getelementptr inbounds [4096 x i8], ptr %3, i64 0, i64 0
  store ptr %10, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %11

11:                                               ; preds = %17, %0
  %12 = load i32, ptr %1, align 4
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load ptr, ptr %2, align 8
  %16 = call ptr @strcat(ptr noundef %15, ptr noundef @.str) #4
  br label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %1, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %1, align 4
  br label %11, !llvm.loop !6

20:                                               ; preds = %11
  store ptr null, ptr %4, align 8
  %21 = load ptr, ptr %2, align 8
  %22 = call noalias ptr @fopen(ptr noundef %21, ptr noundef @.str.1)
  store ptr %22, ptr %4, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load ptr, ptr %4, align 8
  %27 = call i32 @fclose(ptr noundef %26)
  br label %28

28:                                               ; preds = %25, %20
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

declare noalias ptr @fopen(ptr noundef, ptr noundef) #3

declare i32 @fclose(ptr noundef) #3

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
