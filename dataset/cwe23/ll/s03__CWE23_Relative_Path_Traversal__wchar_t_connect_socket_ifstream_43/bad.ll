; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_43.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_43.cpp"
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

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN65CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_439badSourceERPw(ptr noundef nonnull align 8 dereferenceable(8) %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  store i32 -1, ptr %6, align 4
  %8 = load ptr, ptr %2, align 8, !nonnull !6, !align !7
  %9 = load ptr, ptr %8, align 8
  %10 = call i64 @wcslen(ptr noundef %9) #7
  store i64 %10, ptr %7, align 8
  br label %11

11:                                               ; preds = %1
  %12 = call i32 @socket(i32 noundef 2, i32 noundef 1, i32 noundef 6) #8
  store i32 %12, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %70

16:                                               ; preds = %11
  call void @llvm.memset.p0.i64(ptr align 4 %4, i8 0, i64 16, i1 false)
  %17 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 0
  store i16 2, ptr %17, align 4
  %18 = call i32 @inet_addr(ptr noundef @.str) #8
  %19 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 2
  %20 = getelementptr inbounds nuw %struct.in_addr, ptr %19, i32 0, i32 0
  store i32 %18, ptr %20, align 4
  %21 = call zeroext i16 @htons(i16 noundef zeroext 27015) #9
  %22 = getelementptr inbounds nuw %struct.sockaddr_in, ptr %4, i32 0, i32 1
  store i16 %21, ptr %22, align 2
  %23 = load i32, ptr %6, align 4
  %24 = call i32 @connect(i32 noundef %23, ptr noundef %4, i32 noundef 16)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %70

27:                                               ; preds = %16
  %28 = load i32, ptr %6, align 4
  %29 = load ptr, ptr %2, align 8, !nonnull !6, !align !7
  %30 = load ptr, ptr %29, align 8
  %31 = load i64, ptr %7, align 8
  %32 = getelementptr inbounds nuw i32, ptr %30, i64 %31
  %33 = load i64, ptr %7, align 8
  %34 = sub i64 4096, %33
  %35 = sub i64 %34, 1
  %36 = mul i64 4, %35
  %37 = call i64 @recv(i32 noundef %28, ptr noundef %32, i64 noundef %36, i32 noundef 0)
  %38 = trunc i64 %37 to i32
  store i32 %38, ptr %3, align 4
  %39 = load i32, ptr %3, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %44, label %41

41:                                               ; preds = %27
  %42 = load i32, ptr %3, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %27
  br label %70

45:                                               ; preds = %41
  %46 = load ptr, ptr %2, align 8, !nonnull !6, !align !7
  %47 = load ptr, ptr %46, align 8
  %48 = load i64, ptr %7, align 8
  %49 = load i32, ptr %3, align 4
  %50 = sext i32 %49 to i64
  %51 = udiv i64 %50, 4
  %52 = add i64 %48, %51
  %53 = getelementptr inbounds nuw i32, ptr %47, i64 %52
  store i32 0, ptr %53, align 4
  %54 = load ptr, ptr %2, align 8, !nonnull !6, !align !7
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %55, i32 noundef signext 13)
  store ptr %56, ptr %5, align 8
  %57 = load ptr, ptr %5, align 8
  %58 = icmp ne ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load ptr, ptr %5, align 8
  store i32 0, ptr %60, align 4
  br label %61

61:                                               ; preds = %59, %45
  %62 = load ptr, ptr %2, align 8, !nonnull !6, !align !7
  %63 = load ptr, ptr %62, align 8
  %64 = call noundef ptr @_ZSt6wcschrPww(ptr noundef %63, i32 noundef signext 10)
  store ptr %64, ptr %5, align 8
  %65 = load ptr, ptr %5, align 8
  %66 = icmp ne ptr %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load ptr, ptr %5, align 8
  store i32 0, ptr %68, align 4
  br label %69

69:                                               ; preds = %67, %61
  br label %70

70:                                               ; preds = %69, %44, %26, %15
  %71 = load i32, ptr %6, align 4
  %72 = icmp ne i32 %71, -1
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, ptr %6, align 4
  %75 = call i32 @close(i32 noundef %74)
  br label %76

76:                                               ; preds = %73, %70
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @socket(i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare i32 @inet_addr(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare zeroext i16 @htons(i16 noundef zeroext) #4

declare i32 @connect(i32 noundef, ptr noundef, i32 noundef) #5

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

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN65CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_433badEv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca [4096 x i32], align 16
  %3 = alloca %"class.std::basic_ifstream", align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 16384, i1 false)
  %6 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 0
  store i32 47, ptr %6, align 16
  %7 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 1
  store i32 116, ptr %7, align 4
  %8 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 2
  store i32 109, ptr %8, align 8
  %9 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 3
  store i32 112, ptr %9, align 4
  %10 = getelementptr inbounds [4096 x i32], ptr %2, i32 0, i32 4
  store i32 47, ptr %10, align 16
  %11 = getelementptr inbounds [4096 x i32], ptr %2, i64 0, i64 0
  store ptr %11, ptr %1, align 8
  call void @_ZN65CWE23_Relative_Path_Traversal__wchar_t_connect_socket_ifstream_439badSourceERPw(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3)
  %12 = load ptr, ptr %1, align 8
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef %12, i32 noundef 8)
          to label %13 unwind label %15

13:                                               ; preds = %0
  invoke void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256) %3)
          to label %14 unwind label %15

14:                                               ; preds = %13
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #8
  ret void

15:                                               ; preds = %13, %0
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = extractvalue { ptr, i32 } %16, 0
  store ptr %17, ptr %4, align 8
  %18 = extractvalue { ptr, i32 } %16, 1
  store i32 %18, ptr %5, align 4
  call void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256) %3) #8
  br label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %4, align 8
  %21 = load i32, ptr %5, align 4
  %22 = insertvalue { ptr, i32 } poison, ptr %20, 0
  %23 = insertvalue { ptr, i32 } %22, i32 %21, 1
  resume { ptr, i32 } %23
}

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #5

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(256), ptr noundef, i32 noundef) #5

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(256)) #5

; Function Attrs: nounwind
declare void @_ZNSt14basic_ifstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(256)) unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @wcschr(ptr noundef, i32 noundef signext) #1

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!6 = !{}
!7 = !{i64 8}
