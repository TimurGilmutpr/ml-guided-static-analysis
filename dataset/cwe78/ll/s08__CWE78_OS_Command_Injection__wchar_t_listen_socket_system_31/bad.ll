; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s08/CWE78_OS_Command_Injection__wchar_t_listen_socket_system_31.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s08/CWE78_OS_Command_Injection__wchar_t_listen_socket_system_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"command execution failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_listen_socket_system_31_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %11 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 0
  store i32 108, ptr %11, align 16
  %12 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 1
  store i32 115, ptr %12, align 4
  %13 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 2
  store i32 32, ptr %13, align 8
  %14 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %14, ptr %1, align 8
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %15 = load ptr, ptr %1, align 8
  %16 = call i64 @wcslen(ptr noundef %15) #7
  store i64 %16, ptr %8, align 8
  br label %17

17:                                               ; preds = %0
  %18 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %18, ptr %6, align 4
  %19 = load i32, ptr %6, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %82

22:                                               ; preds = %17
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %23 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %23, align 4
  %24 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %25 = getelementptr inbounds nuw %struct.in_addr, ptr %24, i32 0, i32 0
  store i32 0, ptr %25, align 4
  %26 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %26, ptr %27, align 2
  %28 = load i32, ptr %6, align 4
  %29 = call i32 @bind(i32 noundef %28, ptr noundef %4, i32 noundef 16) #8
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %82

32:                                               ; preds = %22
  %33 = load i32, ptr %6, align 4
  %34 = call i32 @listen(i32 noundef %33, i32 noundef 5) #8
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %82

37:                                               ; preds = %32
  %38 = load i32, ptr %6, align 4
  %39 = call i32 @accept(i32 noundef %38, ptr noundef null, ptr noundef null)
  store i32 %39, ptr %7, align 4
  %40 = load i32, ptr %7, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %82

43:                                               ; preds = %37
  %44 = load i32, ptr %7, align 4
  %45 = load ptr, ptr %1, align 8
  %46 = load i64, ptr %8, align 8
  %47 = getelementptr inbounds nuw i32, ptr %45, i64 %46
  %48 = load i64, ptr %8, align 8
  %49 = sub i64 100, %48
  %50 = sub i64 %49, 1
  %51 = mul i64 4, %50
  %52 = call i64 @recv(i32 noundef %44, ptr noundef %47, i64 noundef %51, i32 noundef 0)
  %53 = trunc i64 %52 to i32
  store i32 %53, ptr %3, align 4
  %54 = load i32, ptr %3, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %59, label %56

56:                                               ; preds = %43
  %57 = load i32, ptr %3, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56, %43
  br label %82

60:                                               ; preds = %56
  %61 = load ptr, ptr %1, align 8
  %62 = load i64, ptr %8, align 8
  %63 = load i32, ptr %3, align 4
  %64 = sext i32 %63 to i64
  %65 = udiv i64 %64, 4
  %66 = add i64 %62, %65
  %67 = getelementptr inbounds nuw i32, ptr %61, i64 %66
  store i32 0, ptr %67, align 4
  %68 = load ptr, ptr %1, align 8
  %69 = call ptr @wcschr(ptr noundef %68, i32 noundef 13) #7
  store ptr %69, ptr %5, align 8
  %70 = load ptr, ptr %5, align 8
  %71 = icmp ne ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = load ptr, ptr %5, align 8
  store i32 0, ptr %73, align 4
  br label %74

74:                                               ; preds = %72, %60
  %75 = load ptr, ptr %1, align 8
  %76 = call ptr @wcschr(ptr noundef %75, i32 noundef 10) #7
  store ptr %76, ptr %5, align 8
  %77 = load ptr, ptr %5, align 8
  %78 = icmp ne ptr %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load ptr, ptr %5, align 8
  store i32 0, ptr %80, align 4
  br label %81

81:                                               ; preds = %79, %74
  br label %82

82:                                               ; preds = %81, %59, %42, %36, %31, %21
  %83 = load i32, ptr %6, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, ptr %6, align 4
  %87 = call i32 @close(i32 noundef %86)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, ptr %7, align 4
  %90 = icmp ne i32 %89, -1
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, ptr %7, align 4
  %93 = call i32 @close(i32 noundef %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load ptr, ptr %1, align 8
  store ptr %95, ptr %9, align 8
  %96 = load ptr, ptr %9, align 8
  store ptr %96, ptr %10, align 8
  %97 = load ptr, ptr %10, align 8
  %98 = call i32 @system(ptr noundef %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  call void @printLine(ptr noundef @.str)
  call void @exit(i32 noundef 1) #10
  unreachable

101:                                              ; preds = %94
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #4

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) #3

declare i32 @accept(i32 noundef, ptr noundef, ptr noundef) #5

declare i64 @recv(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef) #2

declare i32 @close(i32 noundef) #5

declare i32 @system(ptr noundef) #5

declare void @printLine(ptr noundef) #5

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
