; ModuleID = 'data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_console_ofstream_32.cpp'
source_filename = "data/C/testcases/CWE23_Relative_Path_Traversal/s03/CWE23_Relative_Path_Traversal__wchar_t_console_ofstream_32.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_ZN58CWE23_Relative_Path_Traversal__wchar_t_console_ofstream_323badEv() #0 personality ptr @__gxx_personality_v0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [4096 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %"class.std::basic_ofstream", align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 16384, i1 false)
  %11 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 0
  store i32 47, ptr %11, align 16
  %12 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 1
  store i32 116, ptr %12, align 4
  %13 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 2
  store i32 109, ptr %13, align 8
  %14 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 3
  store i32 112, ptr %14, align 4
  %15 = getelementptr inbounds [4096 x i32], ptr %4, i32 0, i32 4
  store i32 47, ptr %15, align 16
  %16 = getelementptr inbounds [4096 x i32], ptr %4, i64 0, i64 0
  store ptr %16, ptr %1, align 8
  %17 = load ptr, ptr %2, align 8
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %5, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = call i64 @wcslen(ptr noundef %19) #5
  store i64 %20, ptr %6, align 8
  %21 = load i64, ptr %6, align 8
  %22 = sub i64 4096, %21
  %23 = icmp ugt i64 %22, 1
  br i1 %23, label %24, label %57

24:                                               ; preds = %0
  %25 = load ptr, ptr %5, align 8
  %26 = load i64, ptr %6, align 8
  %27 = getelementptr inbounds nuw i32, ptr %25, i64 %26
  %28 = load i64, ptr %6, align 8
  %29 = sub i64 4096, %28
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr @stdin, align 8
  %32 = call ptr @fgetws(ptr noundef %27, i32 noundef %30, ptr noundef %31)
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %24
  %35 = load ptr, ptr %5, align 8
  %36 = call i64 @wcslen(ptr noundef %35) #5
  store i64 %36, ptr %6, align 8
  %37 = load i64, ptr %6, align 8
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load ptr, ptr %5, align 8
  %41 = load i64, ptr %6, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds nuw i32, ptr %40, i64 %42
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load ptr, ptr %5, align 8
  %48 = load i64, ptr %6, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds nuw i32, ptr %47, i64 %49
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %46, %39, %34
  br label %56

52:                                               ; preds = %24
  call void @printLine(ptr noundef @.str)
  %53 = load ptr, ptr %5, align 8
  %54 = load i64, ptr %6, align 8
  %55 = getelementptr inbounds nuw i32, ptr %53, i64 %54
  store i32 0, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %51
  br label %57

57:                                               ; preds = %56, %0
  %58 = load ptr, ptr %5, align 8
  %59 = load ptr, ptr %2, align 8
  store ptr %58, ptr %59, align 8
  %60 = load ptr, ptr %3, align 8
  %61 = load ptr, ptr %60, align 8
  store ptr %61, ptr %7, align 8
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248) %8)
  %62 = load ptr, ptr %7, align 8
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248) %8, ptr noundef %62, i32 noundef 16)
          to label %63 unwind label %65

63:                                               ; preds = %57
  invoke void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(248) %8)
          to label %64 unwind label %65

64:                                               ; preds = %63
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %8) #6
  ret void

65:                                               ; preds = %63, %57
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = extractvalue { ptr, i32 } %66, 0
  store ptr %67, ptr %9, align 8
  %68 = extractvalue { ptr, i32 } %66, 1
  store i32 %68, ptr %10, align 4
  call void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248) %8) #6
  br label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %9, align 8
  %71 = load i32, ptr %10, align 4
  %72 = insertvalue { ptr, i32 } poison, ptr %70, 0
  %73 = insertvalue { ptr, i32 } %72, i32 %71, 1
  resume { ptr, i32 } %73
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv(ptr noundef nonnull align 8 dereferenceable(248)) #3

; Function Attrs: nounwind
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #4

attributes #0 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
