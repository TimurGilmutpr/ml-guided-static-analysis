; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s05/CWE78_OS_Command_Injection__wchar_t_connect_socket_execlp_17.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s05/CWE78_OS_Command_Injection__wchar_t_connect_socket_execlp_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i32] [i32 115, i32 104, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 45, i32 99, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_connect_socket_execlp_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 0
  store i32 108, ptr %9, align 16
  %10 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 1
  store i32 115, ptr %10, align 4
  %11 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 2
  store i32 32, ptr %11, align 8
  %12 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %12, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %13

13:                                               ; preds = %81, %0
  %14 = load i32, ptr %1, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %84

16:                                               ; preds = %13
  store i32 -1, ptr %7, align 4
  %17 = load ptr, ptr %2, align 8
  %18 = call i64 @wcslen(ptr noundef %17) #6
  store i64 %18, ptr %8, align 8
  br label %19

19:                                               ; preds = %16
  %20 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %20, ptr %7, align 4
  %21 = load i32, ptr %7, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %74

24:                                               ; preds = %19
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 0
  store i16 2, ptr %25, align 4
  %26 = call i32 @inet_addr(ptr noundef @.str) #7
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 2
  %28 = getelementptr inbounds nuw %struct.in_addr, ptr %27, i32 0, i32 0
  store i32 %26, ptr %28, align 4
  %29 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %30 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 1
  store i16 %29, ptr %30, align 2
  %31 = load i32, ptr %7, align 4
  %32 = call i32 @connect(i32 noundef %31, ptr noundef %5, i32 noundef 16)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %74

35:                                               ; preds = %24
  %36 = load i32, ptr %7, align 4
  %37 = load ptr, ptr %2, align 8
  %38 = load i64, ptr %8, align 8
  %39 = getelementptr inbounds nuw i32, ptr %37, i64 %38
  %40 = load i64, ptr %8, align 8
  %41 = sub i64 100, %40
  %42 = sub i64 %41, 1
  %43 = mul i64 4, %42
  %44 = call i64 @recv(i32 noundef %36, ptr noundef %39, i64 noundef %43, i32 noundef 0)
  %45 = trunc i64 %44 to i32
  store i32 %45, ptr %4, align 4
  %46 = load i32, ptr %4, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, ptr %4, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48, %35
  br label %74

52:                                               ; preds = %48
  %53 = load ptr, ptr %2, align 8
  %54 = load i64, ptr %8, align 8
  %55 = load i32, ptr %4, align 4
  %56 = sext i32 %55 to i64
  %57 = udiv i64 %56, 4
  %58 = add i64 %54, %57
  %59 = getelementptr inbounds nuw i32, ptr %53, i64 %58
  store i32 0, ptr %59, align 4
  %60 = load ptr, ptr %2, align 8
  %61 = call ptr @wcschr(ptr noundef %60, i32 noundef 13) #6
  store ptr %61, ptr %6, align 8
  %62 = load ptr, ptr %6, align 8
  %63 = icmp ne ptr %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load ptr, ptr %6, align 8
  store i32 0, ptr %65, align 4
  br label %66

66:                                               ; preds = %64, %52
  %67 = load ptr, ptr %2, align 8
  %68 = call ptr @wcschr(ptr noundef %67, i32 noundef 10) #6
  store ptr %68, ptr %6, align 8
  %69 = load ptr, ptr %6, align 8
  %70 = icmp ne ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load ptr, ptr %6, align 8
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %51, %34, %23
  %75 = load i32, ptr %7, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, ptr %7, align 4
  %79 = call i32 @close(i32 noundef %78)
  br label %80

80:                                               ; preds = %77, %74
  br label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %1, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %1, align 4
  br label %13, !llvm.loop !6

84:                                               ; preds = %13
  %85 = load ptr, ptr %2, align 8
  %86 = call i32 (ptr, ptr, ...) @execlp(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %85, ptr noundef null) #7
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #4

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #5

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

; Function Attrs: nounwind
declare i32 @execlp(ptr noundef, ptr noundef, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

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
