; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s08/CWE78_OS_Command_Injection__wchar_t_listen_socket_popen_34.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s08/CWE78_OS_Command_Injection__wchar_t_listen_socket_popen_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.CWE78_OS_Command_Injection__wchar_t_listen_socket_popen_34_unionType = type { ptr }

@.str = private unnamed_addr constant [4 x i32] [i32 42, i32 46, i32 42, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_listen_socket_popen_34_good() #0 {
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %union.CWE78_OS_Command_Injection__wchar_t_listen_socket_popen_34_unionType, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 0
  store i32 108, ptr %6, align 16
  %7 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 1
  store i32 115, ptr %7, align 4
  %8 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 2
  store i32 32, ptr %8, align 8
  %9 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = load ptr, ptr %1, align 8
  %11 = call ptr @wcscat(ptr noundef %10, ptr noundef @.str) #4
  %12 = load ptr, ptr %1, align 8
  store ptr %12, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  store ptr %13, ptr %4, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = call noalias ptr @popen(ptr noundef %14, ptr noundef @.str.1)
  store ptr %15, ptr %5, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %0
  %19 = load ptr, ptr %5, align 8
  %20 = call i32 @pclose(ptr noundef %19)
  br label %21

21:                                               ; preds = %18, %0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @wcscat(ptr noundef, ptr noundef) #2

declare noalias ptr @popen(ptr noundef, ptr noundef) #3

declare i32 @pclose(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
