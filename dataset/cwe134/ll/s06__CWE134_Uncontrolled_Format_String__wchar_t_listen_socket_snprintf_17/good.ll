; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s06/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_snprintf_17.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s06/CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_snprintf_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.1 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_listen_socket_snprintf_17_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
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
  %11 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %12 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %12, ptr %3, align 8
  store i32 0, ptr %1, align 4
  br label %13

13:                                               ; preds = %97, %0
  %14 = load i32, ptr %1, align 4
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %100

16:                                               ; preds = %13
  store i32 -1, ptr %8, align 4
  store i32 -1, ptr %9, align 4
  %17 = load ptr, ptr %3, align 8
  %18 = call i64 @wcslen(ptr noundef %17) #6
  store i64 %18, ptr %10, align 8
  br label %19

19:                                               ; preds = %16
  %20 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %20, ptr %8, align 4
  %21 = load i32, ptr %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %84

24:                                               ; preds = %19
  call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 16, i1 false)
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %6, i32 0, i32 0
  store i16 2, ptr %25, align 4
  %26 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %6, i32 0, i32 2
  %27 = getelementptr inbounds nuw %struct.in_addr, ptr %26, i32 0, i32 0
  store i32 0, ptr %27, align 4
  %28 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %29 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %6, i32 0, i32 1
  store i16 %28, ptr %29, align 2
  %30 = load i32, ptr %8, align 4
  %31 = call i32 @bind(i32 noundef %30, ptr noundef %6, i32 noundef 16) #7
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %84

34:                                               ; preds = %24
  %35 = load i32, ptr %8, align 4
  %36 = call i32 @listen(i32 noundef %35, i32 noundef 5) #7
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %84

39:                                               ; preds = %34
  %40 = load i32, ptr %8, align 4
  %41 = call i32 @accept(i32 noundef %40, ptr noundef null, ptr noundef null)
  store i32 %41, ptr %9, align 4
  %42 = load i32, ptr %9, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %84

45:                                               ; preds = %39
  %46 = load i32, ptr %9, align 4
  %47 = load ptr, ptr %3, align 8
  %48 = load i64, ptr %10, align 8
  %49 = getelementptr inbounds nuw i32, ptr %47, i64 %48
  %50 = load i64, ptr %10, align 8
  %51 = sub i64 100, %50
  %52 = sub i64 %51, 1
  %53 = mul i64 4, %52
  %54 = call i64 @recv(i32 noundef %46, ptr noundef %49, i64 noundef %53, i32 noundef 0)
  %55 = trunc i64 %54 to i32
  store i32 %55, ptr %5, align 4
  %56 = load i32, ptr %5, align 4
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %61, label %58

58:                                               ; preds = %45
  %59 = load i32, ptr %5, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %45
  br label %84

62:                                               ; preds = %58
  %63 = load ptr, ptr %3, align 8
  %64 = load i64, ptr %10, align 8
  %65 = load i32, ptr %5, align 4
  %66 = sext i32 %65 to i64
  %67 = udiv i64 %66, 4
  %68 = add i64 %64, %67
  %69 = getelementptr inbounds nuw i32, ptr %63, i64 %68
  store i32 0, ptr %69, align 4
  %70 = load ptr, ptr %3, align 8
  %71 = call ptr @wcschr(ptr noundef %70, i32 noundef 13) #6
  store ptr %71, ptr %7, align 8
  %72 = load ptr, ptr %7, align 8
  %73 = icmp ne ptr %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %62
  %75 = load ptr, ptr %7, align 8
  store i32 0, ptr %75, align 4
  br label %76

76:                                               ; preds = %74, %62
  %77 = load ptr, ptr %3, align 8
  %78 = call ptr @wcschr(ptr noundef %77, i32 noundef 10) #6
  store ptr %78, ptr %7, align 8
  %79 = load ptr, ptr %7, align 8
  %80 = icmp ne ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load ptr, ptr %7, align 8
  store i32 0, ptr %82, align 4
  br label %83

83:                                               ; preds = %81, %76
  br label %84

84:                                               ; preds = %83, %61, %44, %38, %33, %23
  %85 = load i32, ptr %8, align 4
  %86 = icmp ne i32 %85, -1
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, ptr %8, align 4
  %89 = call i32 @close(i32 noundef %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, ptr %9, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, ptr %9, align 4
  %95 = call i32 @close(i32 noundef %94)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96
  %98 = load i32, ptr %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %1, align 4
  br label %13, !llvm.loop !6

100:                                              ; preds = %13
  store i32 0, ptr %2, align 4
  br label %101

101:                                              ; preds = %109, %100
  %102 = load i32, ptr %2, align 4
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %112

104:                                              ; preds = %101
  call void @llvm.memset.p0.i64(ptr align 16 %11, i8 0, i64 400, i1 false)
  %105 = getelementptr inbounds [100 x i32], ptr %11, i64 0, i64 0
  %106 = load ptr, ptr %3, align 8
  %107 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %105, i64 noundef 99, ptr noundef @.str, ptr noundef %106) #7
  %108 = getelementptr inbounds [100 x i32], ptr %11, i64 0, i64 0
  call void @printWLine(ptr noundef %108)
  br label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %2, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, ptr %2, align 4
  br label %101, !llvm.loop !8

112:                                              ; preds = %101
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

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @printWLine(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  store i32 0, ptr %1, align 4
  br label %7

7:                                                ; preds = %13, %0
  %8 = load i32, ptr %1, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = call ptr @wcscpy(ptr noundef %11, ptr noundef @.str.1) #7
  br label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %1, align 4
  br label %7, !llvm.loop !9

16:                                               ; preds = %7
  store i32 0, ptr %2, align 4
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, ptr %2, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 400, i1 false)
  %21 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  %22 = load ptr, ptr %3, align 8
  %23 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %21, i64 noundef 99, ptr noundef %22) #7
  %24 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  call void @printWLine(ptr noundef %24)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %2, align 4
  br label %17, !llvm.loop !10

28:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #3

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
