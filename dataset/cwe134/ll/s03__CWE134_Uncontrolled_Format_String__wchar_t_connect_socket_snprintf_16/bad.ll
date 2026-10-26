; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_snprintf_16.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_snprintf_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_connect_socket_snprintf_16_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  br label %10

10:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @wcslen(ptr noundef %11) #6
  store i64 %12, ptr %7, align 8
  br label %13

13:                                               ; preds = %10
  %14 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #7
  store i32 %14, ptr %6, align 4
  %15 = load i32, ptr %6, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %68

18:                                               ; preds = %13
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %19 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %19, align 4
  %20 = call i32 @inet_addr(ptr noundef @.str) #7
  %21 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %22 = getelementptr inbounds nuw %struct.in_addr, ptr %21, i32 0, i32 0
  store i32 %20, ptr %22, align 4
  %23 = call zeroext i16 @htons(i16 noundef zeroext 27015) #8
  %24 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %23, ptr %24, align 2
  %25 = load i32, ptr %6, align 4
  %26 = call i32 @connect(i32 noundef %25, ptr noundef %4, i32 noundef 16)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %68

29:                                               ; preds = %18
  %30 = load i32, ptr %6, align 4
  %31 = load ptr, ptr %1, align 8
  %32 = load i64, ptr %7, align 8
  %33 = getelementptr inbounds nuw i32, ptr %31, i64 %32
  %34 = load i64, ptr %7, align 8
  %35 = sub i64 100, %34
  %36 = sub i64 %35, 1
  %37 = mul i64 4, %36
  %38 = call i64 @recv(i32 noundef %30, ptr noundef %33, i64 noundef %37, i32 noundef 0)
  %39 = trunc i64 %38 to i32
  store i32 %39, ptr %3, align 4
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, ptr %3, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %29
  br label %68

46:                                               ; preds = %42
  %47 = load ptr, ptr %1, align 8
  %48 = load i64, ptr %7, align 8
  %49 = load i32, ptr %3, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = add i64 %48, %51
  %53 = getelementptr inbounds nuw i32, ptr %47, i64 %52
  store i32 0, ptr %53, align 4
  %54 = load ptr, ptr %1, align 8
  %55 = call ptr @wcschr(ptr noundef %54, i32 noundef 13) #6
  store ptr %55, ptr %5, align 8
  %56 = load ptr, ptr %5, align 8
  %57 = icmp ne ptr %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %46
  %59 = load ptr, ptr %5, align 8
  store i32 0, ptr %59, align 4
  br label %60

60:                                               ; preds = %58, %46
  %61 = load ptr, ptr %1, align 8
  %62 = call ptr @wcschr(ptr noundef %61, i32 noundef 10) #6
  store ptr %62, ptr %5, align 8
  %63 = load ptr, ptr %5, align 8
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load ptr, ptr %5, align 8
  store i32 0, ptr %66, align 4
  br label %67

67:                                               ; preds = %65, %60
  br label %68

68:                                               ; preds = %67, %45, %28, %17
  %69 = load i32, ptr %6, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, ptr %6, align 4
  %73 = call i32 @close(i32 noundef %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 400, i1 false)
  %77 = getelementptr inbounds [100 x i32], ptr %8, i64 0, i64 0
  %78 = load ptr, ptr %1, align 8
  %79 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %77, i64 noundef 99, ptr noundef %78) #7
  %80 = getelementptr inbounds [100 x i32], ptr %8, i64 0, i64 0
  call void @printWLine(ptr noundef %80)
  br label %81

81:                                               ; preds = %76
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
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @printWLine(ptr noundef) #5

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
