; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE78_OS_Command_Injection/s05/CWE78_OS_Command_Injection__wchar_t_connect_socket_popen_17.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE78_OS_Command_Injection/s05/CWE78_OS_Command_Injection__wchar_t_connect_socket_popen_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_connect_socket_popen_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %10 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 0
  store i32 108, ptr %10, align 16
  %11 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 1
  store i32 115, ptr %11, align 4
  %12 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 2
  store i32 32, ptr %12, align 8
  %13 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %13, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %14

14:                                               ; preds = %82, %0
  %15 = load i32, ptr %1, align 4
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %85

17:                                               ; preds = %14
  store i32 -1, ptr %7, align 4
  %18 = load ptr, ptr %2, align 8
  %19 = call i64 @wcslen(ptr noundef %18) #6
  store i64 %19, ptr %8, align 8
  br label %20

20:                                               ; preds = %17
  %21 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %21, ptr %7, align 4
  %22 = load i32, ptr %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %75

25:                                               ; preds = %20
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 16, i1 false)
  %26 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 0
  store i16 2, ptr %26, align 4
  %27 = call i32 @inet_addr(ptr noundef @.str) #7
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 2
  %29 = getelementptr inbounds nuw %struct.in_addr, ptr %28, i32 0, i32 0
  store i32 %27, ptr %29, align 4
  %30 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %31 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 1
  store i16 %30, ptr %31, align 2
  %32 = load i32, ptr %7, align 4
  %33 = call i32 @connect(i32 noundef %32, ptr noundef %5, i32 noundef 16)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %75

36:                                               ; preds = %25
  %37 = load i32, ptr %7, align 4
  %38 = load ptr, ptr %2, align 8
  %39 = load i64, ptr %8, align 8
  %40 = getelementptr inbounds nuw i32, ptr %38, i64 %39
  %41 = load i64, ptr %8, align 8
  %42 = sub i64 100, %41
  %43 = sub i64 %42, 1
  %44 = mul i64 4, %43
  %45 = call i64 @recv(i32 noundef %37, ptr noundef %40, i64 noundef %44, i32 noundef 0)
  %46 = trunc i64 %45 to i32
  store i32 %46, ptr %4, align 4
  %47 = load i32, ptr %4, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %52, label %49

49:                                               ; preds = %36
  %50 = load i32, ptr %4, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49, %36
  br label %75

53:                                               ; preds = %49
  %54 = load ptr, ptr %2, align 8
  %55 = load i64, ptr %8, align 8
  %56 = load i32, ptr %4, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 4
  %59 = add i64 %55, %58
  %60 = getelementptr inbounds nuw i32, ptr %54, i64 %59
  store i32 0, ptr %60, align 4
  %61 = load ptr, ptr %2, align 8
  %62 = call ptr @wcschr(ptr noundef %61, i32 noundef 13) #6
  store ptr %62, ptr %6, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = load ptr, ptr %6, align 8
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %53
  %68 = load ptr, ptr %2, align 8
  %69 = call ptr @wcschr(ptr noundef %68, i32 noundef 10) #6
  store ptr %69, ptr %6, align 8
  %70 = load ptr, ptr %6, align 8
  %71 = icmp ne ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load ptr, ptr %6, align 8
  store i32 0, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %67
  br label %75

75:                                               ; preds = %74, %52, %35, %24
  %76 = load i32, ptr %7, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, ptr %7, align 4
  %80 = call i32 @close(i32 noundef %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81
  %83 = load i32, ptr %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %1, align 4
  br label %14, !llvm.loop !6

85:                                               ; preds = %14
  %86 = load ptr, ptr %2, align 8
  %87 = call noalias ptr @popen(ptr noundef %86, ptr noundef @.str.1)
  store ptr %87, ptr %9, align 8
  %88 = load ptr, ptr %9, align 8
  %89 = icmp ne ptr %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load ptr, ptr %9, align 8
  %92 = call i32 @pclose(ptr noundef %91)
  br label %93

93:                                               ; preds = %90, %85
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

declare noalias ptr @popen(ptr noundef, ptr noundef) #5

declare i32 @pclose(ptr noundef) #5

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
