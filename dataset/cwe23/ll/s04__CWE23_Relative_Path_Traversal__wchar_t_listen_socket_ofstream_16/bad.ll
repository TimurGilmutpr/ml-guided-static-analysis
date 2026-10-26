; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s04/CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ofstream_16.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s04/CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ofstream_16.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%"class.std::basic_ofstream" = type { %"class.std::basic_ostream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::basic_filebuf" = type { %"class.std::basic_streambuf", %union.pthread_mutex_t, %"class.std::__basic_file", i32, %struct.__mbstate_t, %struct.__mbstate_t, %struct.__mbstate_t, ptr, i64, i8, i8, i8, i8, ptr, ptr, i8, ptr, ptr, i64, ptr, ptr }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%"class.std::__basic_file" = type <{ ptr, i8, [7 x i8] }>
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }

$_ZSt6wcschrPww = comdat any

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN64CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ofstream_163badEv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i32], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %"class.std::basic_ofstream", align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 16384, i1 false)
  %12 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 0
  store i32 47, ptr %12, align 16
  %13 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 1
  store i32 116, ptr %13, align 4
  %14 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 2
  store i32 109, ptr %14, align 8
  %15 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 3
  store i32 112, ptr %15, align 4
  %16 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 4
  store i32 47, ptr %16, align 16
  %17 = getelementptr inbounds [4096 x i32], ptr %2, i64 0, i64 0
  store ptr %17, ptr %1, align 8
  br label %18

18:                                               ; preds = %0
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %19 = load ptr, ptr %1, align 8
  %20 = call i64 @wcslen(ptr noundef %19) #7
  store i64 %20, ptr %8, align 8
  br label %21

21:                                               ; preds = %18
  %22 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %22, ptr %6, align 4
  %23 = load i32, ptr %6, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %86

26:                                               ; preds = %21
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %27 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %27, align 4
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %29 = getelementptr inbounds nuw %struct.in_addr, ptr %28, i32 0, i32 0
  store i32 0, ptr %29, align 4
  %30 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %31 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %30, ptr %31, align 2
  %32 = load i32, ptr %6, align 4
  %33 = call i32 @bind(i32 noundef %32, ptr noundef %4, i32 noundef 16) #8
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %86

36:                                               ; preds = %26
  %37 = load i32, ptr %6, align 4
  %38 = call i32 @listen(i32 noundef %37, i32 noundef 5) #8
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %86

41:                                               ; preds = %36
  %42 = load i32, ptr %6, align 4
  %43 = call i32 @accept(i32 noundef %42, ptr noundef null, ptr noundef null)
  store i32 %43, ptr %7, align 4
  %44 = load i32, ptr %7, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %86

47:                                               ; preds = %41
  %48 = load i32, ptr %7, align 4
  %49 = load ptr, ptr %1, align 8
  %50 = load i64, ptr %8, align 8
  %51 = getelementptr inbounds nuw i32, ptr %49, i64 %50
  %52 = load i64, ptr %8, align 8
  %53 = sub i64 4096, %52
  %54 = sub i64 %53, 1
  %55 = mul i64 4, %54
  %56 = call i64 @recv(i32 noundef %48, ptr noundef %51, i64 noundef %55, i32 noundef 0)
  %57 = trunc i64 %56 to i32
  store i32 %57, ptr %3, align 4
  %58 = load i32, ptr %3, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %63, label %60

60:                                               ; preds = %47
  %61 = load i32, ptr %3, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %47
  br label %86

64:                                               ; preds = %60
  %65 = load ptr, ptr %1, align 8
  %66 = load i64, ptr %8, align 8
  %67 = load i32, ptr %3, align 4
  %68 = sext i32 %67 to i64
  %69 = udiv i64 %68, 4
  %70 = add i64 %66, %69
  %71 = getelementptr inbounds nuw i32, ptr %65, i64 %70
  store i32 0, ptr %71, align 4
  %72 = load ptr, ptr %1, align 8
  %73 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %72, i32 noundef signext 13)
  store ptr %73, ptr %5, align 8
  %74 = load ptr, ptr %5, align 8
  %75 = icmp ne ptr %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %64
  %77 = load ptr, ptr %5, align 8
  store i32 0, ptr %77, align 4
  br label %78

78:                                               ; preds = %76, %64
  %79 = load ptr, ptr %1, align 8
  %80 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %79, i32 noundef signext 10)
  store ptr %80, ptr %5, align 8
  %81 = load ptr, ptr %5, align 8
  %82 = icmp ne ptr %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load ptr, ptr %5, align 8
  store i32 0, ptr %84, align 4
  br label %85

85:                                               ; preds = %83, %78
  br label %86

86:                                               ; preds = %85, %63, %46, %40, %35, %25
  %87 = load i32, ptr %6, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32, ptr %6, align 4
  %91 = call i32 @close(i32 noundef %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i32, ptr %7, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, ptr %7, align 4
  %97 = call i32 @close(i32 noundef %96)
  br label %98

98:                                               ; preds = %95, %92
  br label %99

99:                                               ; preds = %98
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %9)
  %100 = load ptr, ptr %1, align 8
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %9, ptr noundef %100, i32 noundef 16)
          to label %101 unwind label %103

101:                                              ; preds = %99
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(248) %9)
          to label %102 unwind label %103

102:                                              ; preds = %101
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %9) #8
  ret void

103:                                              ; preds = %101, %99
  %104 = landingpad { ptr, i32 }
          cleanup
  %105 = extractvalue { ptr, i32 } %104, 0
  store ptr %105, ptr %10, align 8
  %106 = extractvalue { ptr, i32 } %104, 1
  store i32 %106, ptr %11, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %9) #8
  br label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr %10, align 8
  %109 = load i32, ptr %11, align 4
  %110 = insertvalue { ptr, i32 } poison, ptr %108, 0
  %111 = insertvalue { ptr, i32 } %110, i32 %109, 1
  resume { ptr, i32 } %111
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

; Function Attrs: mustprogress noinline nounwind optnone uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6wcschrPww(ptr noundef %0, i32 noundef signext %1) #6 comdat {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = load i32, ptr %4, align 4
  %7 = call ptr @wcschr(ptr noundef %5, i32 noundef signext %6) #7
  ret ptr %7
}

declare i32 @close(i32 noundef) #5

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #5

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(248)) #5

; Function Attrs: nounwind
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef signext) #2

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
