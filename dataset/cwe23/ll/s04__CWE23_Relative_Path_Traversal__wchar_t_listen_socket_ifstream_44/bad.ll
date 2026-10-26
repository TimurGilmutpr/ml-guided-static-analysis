; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s04/CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ifstream_44.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s04/CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ifstream_44.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%"class.std::basic_ifstream" = type { %"class.std::basic_istream.base", %"class.std::basic_filebuf", %"class.std::basic_ios" }
%"class.std::basic_istream.base" = type { ptr, i64 }
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
define dso_local void @_ZN64CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ifstream_443badEv() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca [4096 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_in, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr @_ZN64CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ifstream_44L7badSinkEPw, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 16384, i1 false)
  %10 = getelementptr inbounds [4096 x i32], ptr %3, i32 0, i32 0
  store i32 47, ptr %10, align 16
  %11 = getelementptr inbounds [4096 x i32], ptr %3, i32 0, i32 1
  store i32 116, ptr %11, align 4
  %12 = getelementptr inbounds [4096 x i32], ptr %3, i32 0, i32 2
  store i32 109, ptr %12, align 8
  %13 = getelementptr inbounds [4096 x i32], ptr %3, i32 0, i32 3
  store i32 112, ptr %13, align 4
  %14 = getelementptr inbounds [4096 x i32], ptr %3, i32 0, i32 4
  store i32 47, ptr %14, align 16
  %15 = getelementptr inbounds [4096 x i32], ptr %3, i64 0, i64 0
  store ptr %15, ptr %1, align 8
  store i32 -1, ptr %7, align 4
  store i32 -1, ptr %8, align 4
  %16 = load ptr, ptr %1, align 8
  %17 = call i64 @wcslen(ptr noundef %16) #7
  store i64 %17, ptr %9, align 8
  br label %18

18:                                               ; preds = %0
  %19 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %19, ptr %7, align 4
  %20 = load i32, ptr %7, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %83

23:                                               ; preds = %18
  call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 16, i1 false)
  %24 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 0
  store i16 2, ptr %24, align 4
  %25 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 2
  %26 = getelementptr inbounds nuw %struct.in_addr, ptr %25, i32 0, i32 0
  store i32 0, ptr %26, align 4
  %27 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %28 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %5, i32 0, i32 1
  store i16 %27, ptr %28, align 2
  %29 = load i32, ptr %7, align 4
  %30 = call i32 @bind(i32 noundef %29, ptr noundef %5, i32 noundef 16) #8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %83

33:                                               ; preds = %23
  %34 = load i32, ptr %7, align 4
  %35 = call i32 @listen(i32 noundef %34, i32 noundef 5) #8
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %83

38:                                               ; preds = %33
  %39 = load i32, ptr %7, align 4
  %40 = call i32 @accept(i32 noundef %39, ptr noundef null, ptr noundef null)
  store i32 %40, ptr %8, align 4
  %41 = load i32, ptr %8, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %83

44:                                               ; preds = %38
  %45 = load i32, ptr %8, align 4
  %46 = load ptr, ptr %1, align 8
  %47 = load i64, ptr %9, align 8
  %48 = getelementptr inbounds nuw i32, ptr %46, i64 %47
  %49 = load i64, ptr %9, align 8
  %50 = sub i64 4096, %49
  %51 = sub i64 %50, 1
  %52 = mul i64 4, %51
  %53 = call i64 @recv(i32 noundef %45, ptr noundef %48, i64 noundef %52, i32 noundef 0)
  %54 = trunc i64 %53 to i32
  store i32 %54, ptr %4, align 4
  %55 = load i32, ptr %4, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, ptr %4, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %44
  br label %83

61:                                               ; preds = %57
  %62 = load ptr, ptr %1, align 8
  %63 = load i64, ptr %9, align 8
  %64 = load i32, ptr %4, align 4
  %65 = sext i32 %64 to i64
  %66 = udiv i64 %65, 4
  %67 = add i64 %63, %66
  %68 = getelementptr inbounds nuw i32, ptr %62, i64 %67
  store i32 0, ptr %68, align 4
  %69 = load ptr, ptr %1, align 8
  %70 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %69, i32 noundef signext 13)
  store ptr %70, ptr %6, align 8
  %71 = load ptr, ptr %6, align 8
  %72 = icmp ne ptr %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load ptr, ptr %6, align 8
  store i32 0, ptr %74, align 4
  br label %75

75:                                               ; preds = %73, %61
  %76 = load ptr, ptr %1, align 8
  %77 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %76, i32 noundef signext 10)
  store ptr %77, ptr %6, align 8
  %78 = load ptr, ptr %6, align 8
  %79 = icmp ne ptr %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load ptr, ptr %6, align 8
  store i32 0, ptr %81, align 4
  br label %82

82:                                               ; preds = %80, %75
  br label %83

83:                                               ; preds = %82, %60, %43, %37, %32, %22
  %84 = load i32, ptr %7, align 4
  %85 = icmp ne i32 %84, -1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, ptr %7, align 4
  %88 = call i32 @close(i32 noundef %87)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, ptr %8, align 4
  %91 = icmp ne i32 %90, -1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, ptr %8, align 4
  %94 = call i32 @close(i32 noundef %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load ptr, ptr %2, align 8
  %97 = load ptr, ptr %1, align 8
  call void %96(ptr noundef %97)
  ret void
}

; Function Attrs: mustprogress noinline optnone uwtable
define internal void @_ZN64CWE23_Relative_Path_Traversal__wchar_t_listen_socket_ifstream_44L7badSinkEPw(ptr noundef %0) #0 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = alloca %"class.std::basic_ifstream", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3)
  %6 = load ptr, ptr %2, align 8
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef %6, i32 noundef 8)
          to label %7 unwind label %9

7:                                                ; preds = %1
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256) %3)
          to label %8 unwind label %9

8:                                                ; preds = %7
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #8
  ret void

9:                                                ; preds = %7, %1
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = extractvalue { ptr, i32 } %10, 0
  store ptr %11, ptr %4, align 8
  %12 = extractvalue { ptr, i32 } %10, 1
  store i32 %12, ptr %5, align 4
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #8
  br label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %4, align 8
  %15 = load i32, ptr %5, align 4
  %16 = insertvalue { ptr, i32 } poison, ptr %14, 0
  %17 = insertvalue { ptr, i32 } %16, i32 %15, 1
  resume { ptr, i32 } %17
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

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #5

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256)) #5

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #3

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
