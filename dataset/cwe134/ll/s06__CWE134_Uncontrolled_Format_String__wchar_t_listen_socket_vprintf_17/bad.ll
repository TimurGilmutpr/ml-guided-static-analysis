; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s06/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_vprintf_17.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s06/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_vprintf_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_vprintf_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %11 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %11, ptr %3, align 8
  store i32 0, ptr %1, align 4
  br label %12

12:                                               ; preds = %96, %0
  %13 = load i32, ptr %1, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %99

15:                                               ; preds = %12
  store i32 -1, ptr %8, align 4
  store i32 -1, ptr %9, align 4
  %16 = load ptr, ptr %3, align 8
  %17 = call i64 @wcslen(ptr noundef %16) #7
  store i64 %17, ptr %10, align 8
  br label %18

18:                                               ; preds = %15
  %19 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %19, ptr %8, align 4
  %20 = load i32, ptr %8, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %83

23:                                               ; preds = %18
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %6, i32 0, i32 0
  store i16 2, ptr %24, align 4
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %6, i32 0, i32 2
  %26 = getelementptr inbounds nuw %struct.in_addr, ptr %25, i32 0, i32 0
  store i32 0, ptr %26, align 4
  %27 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %6, i32 0, i32 1
  store i16 %27, ptr %28, align 2
  %29 = load i32, ptr %8, align 4
  %30 = call i32 @bind(i32 noundef %29, ptr noundef %6, i32 noundef 16) #8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %83

33:                                               ; preds = %23
  %34 = load i32, ptr %8, align 4
  %35 = call i32 @listen(i32 noundef %34, i32 noundef 5) #8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %83

38:                                               ; preds = %33
  %39 = load i32, ptr %8, align 4
  %40 = call i32 @accept(i32 noundef %39, ptr noundef null, ptr noundef null)
  store i32 %40, ptr %9, align 4
  %41 = load i32, ptr %9, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %83

44:                                               ; preds = %38
  %45 = load i32, ptr %9, align 4
  %46 = load ptr, ptr %3, align 8
  %47 = load i64, ptr %10, align 8
  %48 = getelementptr inbounds nuw i32, ptr %46, i64 %47
  %49 = load i64, ptr %10, align 8
  %50 = sub i64 100, %49
  %51 = sub i64 %50, 1
  %52 = mul i64 4, %51
  %53 = call i64 @recv(i32 noundef %45, ptr noundef %48, i64 noundef %52, i32 noundef 0)
  %54 = trunc i64 %53 to i32
  store i32 %54, ptr %5, align 4
  %55 = load i32, ptr %5, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, ptr %5, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %44
  br label %83

61:                                               ; preds = %57
  %62 = load ptr, ptr %3, align 8
  %63 = load i64, ptr %10, align 8
  %64 = load i32, ptr %5, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 4
  %67 = add i64 %63, %66
  %68 = getelementptr inbounds nuw i32, ptr %62, i64 %67
  store i32 0, ptr %68, align 4
  %69 = load ptr, ptr %3, align 8
  %70 = call ptr @wcschr(ptr noundef %69, i32 noundef 13) #7
  store ptr %70, ptr %7, align 8
  %71 = load ptr, ptr %7, align 8
  %72 = icmp ne ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load ptr, ptr %7, align 8
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %61
  %76 = load ptr, ptr %3, align 8
  %77 = call ptr @wcschr(ptr noundef %76, i32 noundef 10) #7
  store ptr %77, ptr %7, align 8
  %78 = load ptr, ptr %7, align 8
  %79 = icmp ne ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load ptr, ptr %7, align 8
  store i32 0, ptr %81, align 4
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82, %60, %43, %37, %32, %22
  %84 = load i32, ptr %8, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, ptr %8, align 4
  %88 = call i32 @close(i32 noundef %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, ptr %9, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, ptr %9, align 4
  %94 = call i32 @close(i32 noundef %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95
  %97 = load i32, ptr %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr %1, align 4
  br label %12, !llvm.loop !6

99:                                               ; preds = %12
  store i32 0, ptr %2, align 4
  br label %100

100:                                              ; preds = %106, %99
  %101 = load i32, ptr %2, align 4
  %102 = icmp slt i32 %101, 1
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load ptr, ptr %3, align 8
  %105 = load ptr, ptr %3, align 8
  call void (ptr, ...) @badVaSinkB(ptr noundef %104, ptr noundef %105)
  br label %106

106:                                              ; preds = %103
  %107 = load i32, ptr %2, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr %2, align 4
  br label %100, !llvm.loop !8

109:                                              ; preds = %100
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

; Function Attrs: noinline nounwind optnone uwtable
define internal void @badVaSinkB(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %7 = call i32 @vwprintf(ptr noundef %5, ptr noundef %6)
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %8)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #6

declare i32 @vwprintf(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }

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
!8 = distinct !{!8, !7}
