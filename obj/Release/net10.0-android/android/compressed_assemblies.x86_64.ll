; ModuleID = 'compressed_assemblies.x86_64.ll'
source_filename = "compressed_assemblies.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android21"

%struct.CompressedAssemblyDescriptor = type {
	i32, ; uint32_t uncompressed_file_size
	i1, ; bool loaded
	i32 ; uint32_t buffer_offset
}

@compressed_assembly_count = dso_local local_unnamed_addr constant i32 151, align 4

@compressed_assembly_descriptors = dso_local local_unnamed_addr global [151 x %struct.CompressedAssemblyDescriptor] [
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 0; uint32_t buffer_offset
	}, ; 0: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 15624; uint32_t buffer_offset
	}, ; 1: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 31256; uint32_t buffer_offset
	}, ; 2: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 46880; uint32_t buffer_offset
	}, ; 3: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 62504; uint32_t buffer_offset
	}, ; 4: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 78136; uint32_t buffer_offset
	}, ; 5: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 93768; uint32_t buffer_offset
	}, ; 6: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 109400; uint32_t buffer_offset
	}, ; 7: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 125024; uint32_t buffer_offset
	}, ; 8: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 140648; uint32_t buffer_offset
	}, ; 9: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 156280; uint32_t buffer_offset
	}, ; 10: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 171904; uint32_t buffer_offset
	}, ; 11: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 187528; uint32_t buffer_offset
	}, ; 12: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 203152; uint32_t buffer_offset
	}, ; 13: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 218776; uint32_t buffer_offset
	}, ; 14: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 234400; uint32_t buffer_offset
	}, ; 15: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 250024; uint32_t buffer_offset
	}, ; 16: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 265648; uint32_t buffer_offset
	}, ; 17: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 281272; uint32_t buffer_offset
	}, ; 18: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 296904; uint32_t buffer_offset
	}, ; 19: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 312568; uint32_t buffer_offset
	}, ; 20: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 328192; uint32_t buffer_offset
	}, ; 21: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 343824; uint32_t buffer_offset
	}, ; 22: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 359456; uint32_t buffer_offset
	}, ; 23: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 375088; uint32_t buffer_offset
	}, ; 24: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 390760; uint32_t buffer_offset
	}, ; 25: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 406392; uint32_t buffer_offset
	}, ; 26: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 422056; uint32_t buffer_offset
	}, ; 27: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 437680; uint32_t buffer_offset
	}, ; 28: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 453304; uint32_t buffer_offset
	}, ; 29: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 468928; uint32_t buffer_offset
	}, ; 30: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 484552; uint32_t buffer_offset
	}, ; 31: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 500216; uint32_t buffer_offset
	}, ; 32: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 15632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 515840; uint32_t buffer_offset
	}, ; 33: Microsoft.Maui.Controls.resources
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 531472; uint32_t buffer_offset
	}, ; 34: _Microsoft.Android.Resource.Designer
	%struct.CompressedAssemblyDescriptor {
		i32 91648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 537616; uint32_t buffer_offset
	}, ; 35: Firebase
	%struct.CompressedAssemblyDescriptor {
		i32 488960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 629264; uint32_t buffer_offset
	}, ; 36: LiteDB
	%struct.CompressedAssemblyDescriptor {
		i32 14848, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1118224; uint32_t buffer_offset
	}, ; 37: Microsoft.Extensions.Configuration
	%struct.CompressedAssemblyDescriptor {
		i32 6656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1133072; uint32_t buffer_offset
	}, ; 38: Microsoft.Extensions.Configuration.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 46592, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1139728; uint32_t buffer_offset
	}, ; 39: Microsoft.Extensions.DependencyInjection
	%struct.CompressedAssemblyDescriptor {
		i32 26624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1186320; uint32_t buffer_offset
	}, ; 40: Microsoft.Extensions.DependencyInjection.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1212944; uint32_t buffer_offset
	}, ; 41: Microsoft.Extensions.Diagnostics.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 7168, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1221136; uint32_t buffer_offset
	}, ; 42: Microsoft.Extensions.FileProviders.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1228304; uint32_t buffer_offset
	}, ; 43: Microsoft.Extensions.Hosting.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1234448; uint32_t buffer_offset
	}, ; 44: Microsoft.Extensions.Logging
	%struct.CompressedAssemblyDescriptor {
		i32 19456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1252368; uint32_t buffer_offset
	}, ; 45: Microsoft.Extensions.Logging.Abstractions
	%struct.CompressedAssemblyDescriptor {
		i32 16896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1271824; uint32_t buffer_offset
	}, ; 46: Microsoft.Extensions.Options
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1288720; uint32_t buffer_offset
	}, ; 47: Microsoft.Extensions.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 1928504, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 1297936; uint32_t buffer_offset
	}, ; 48: Microsoft.Maui.Controls
	%struct.CompressedAssemblyDescriptor {
		i32 135432, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3226440; uint32_t buffer_offset
	}, ; 49: Microsoft.Maui.Controls.Xaml
	%struct.CompressedAssemblyDescriptor {
		i32 861696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 3361872; uint32_t buffer_offset
	}, ; 50: Microsoft.Maui
	%struct.CompressedAssemblyDescriptor {
		i32 59392, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4223568; uint32_t buffer_offset
	}, ; 51: Microsoft.Maui.Essentials
	%struct.CompressedAssemblyDescriptor {
		i32 208696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4282960; uint32_t buffer_offset
	}, ; 52: Microsoft.Maui.Graphics
	%struct.CompressedAssemblyDescriptor {
		i32 712464, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 4491656; uint32_t buffer_offset
	}, ; 53: Newtonsoft.Json
	%struct.CompressedAssemblyDescriptor {
		i32 136192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5204120; uint32_t buffer_offset
	}, ; 54: Plugin.LocalNotification
	%struct.CompressedAssemblyDescriptor {
		i32 101376, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5340312; uint32_t buffer_offset
	}, ; 55: SQLite-net
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5441688; uint32_t buffer_offset
	}, ; 56: SQLitePCLRaw.batteries_v2
	%struct.CompressedAssemblyDescriptor {
		i32 51200, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5447320; uint32_t buffer_offset
	}, ; 57: SQLitePCLRaw.core
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5498520; uint32_t buffer_offset
	}, ; 58: SQLitePCLRaw.lib.e_sqlite3.android
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5503640; uint32_t buffer_offset
	}, ; 59: SQLitePCLRaw.provider.e_sqlite3
	%struct.CompressedAssemblyDescriptor {
		i32 98304, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5540504; uint32_t buffer_offset
	}, ; 60: System.Reactive
	%struct.CompressedAssemblyDescriptor {
		i32 73728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5638808; uint32_t buffer_offset
	}, ; 61: Xamarin.AndroidX.Activity
	%struct.CompressedAssemblyDescriptor {
		i32 583680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 5712536; uint32_t buffer_offset
	}, ; 62: Xamarin.AndroidX.AppCompat
	%struct.CompressedAssemblyDescriptor {
		i32 17920, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6296216; uint32_t buffer_offset
	}, ; 63: Xamarin.AndroidX.AppCompat.AppCompatResources
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6314136; uint32_t buffer_offset
	}, ; 64: Xamarin.AndroidX.CardView
	%struct.CompressedAssemblyDescriptor {
		i32 22528, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6333080; uint32_t buffer_offset
	}, ; 65: Xamarin.AndroidX.Collection.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 78336, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6355608; uint32_t buffer_offset
	}, ; 66: Xamarin.AndroidX.CoordinatorLayout
	%struct.CompressedAssemblyDescriptor {
		i32 794624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 6433944; uint32_t buffer_offset
	}, ; 67: Xamarin.AndroidX.Core
	%struct.CompressedAssemblyDescriptor {
		i32 26624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7228568; uint32_t buffer_offset
	}, ; 68: Xamarin.AndroidX.CursorAdapter
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7255192; uint32_t buffer_offset
	}, ; 69: Xamarin.AndroidX.CustomView
	%struct.CompressedAssemblyDescriptor {
		i32 47104, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7264920; uint32_t buffer_offset
	}, ; 70: Xamarin.AndroidX.DrawerLayout
	%struct.CompressedAssemblyDescriptor {
		i32 236032, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7312024; uint32_t buffer_offset
	}, ; 71: Xamarin.AndroidX.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 23552, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7548056; uint32_t buffer_offset
	}, ; 72: Xamarin.AndroidX.Lifecycle.Common.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 18944, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7571608; uint32_t buffer_offset
	}, ; 73: Xamarin.AndroidX.Lifecycle.LiveData.Core
	%struct.CompressedAssemblyDescriptor {
		i32 32768, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7590552; uint32_t buffer_offset
	}, ; 74: Xamarin.AndroidX.Lifecycle.ViewModel.Android
	%struct.CompressedAssemblyDescriptor {
		i32 13824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7623320; uint32_t buffer_offset
	}, ; 75: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 39424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7637144; uint32_t buffer_offset
	}, ; 76: Xamarin.AndroidX.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 92672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7676568; uint32_t buffer_offset
	}, ; 77: Xamarin.AndroidX.Navigation.Common.Android
	%struct.CompressedAssemblyDescriptor {
		i32 19456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7769240; uint32_t buffer_offset
	}, ; 78: Xamarin.AndroidX.Navigation.Fragment
	%struct.CompressedAssemblyDescriptor {
		i32 65536, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7788696; uint32_t buffer_offset
	}, ; 79: Xamarin.AndroidX.Navigation.Runtime.Android
	%struct.CompressedAssemblyDescriptor {
		i32 27136, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7854232; uint32_t buffer_offset
	}, ; 80: Xamarin.AndroidX.Navigation.UI
	%struct.CompressedAssemblyDescriptor {
		i32 457728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 7881368; uint32_t buffer_offset
	}, ; 81: Xamarin.AndroidX.RecyclerView
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8339096; uint32_t buffer_offset
	}, ; 82: Xamarin.AndroidX.SavedState.SavedState.Android
	%struct.CompressedAssemblyDescriptor {
		i32 41984, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8351384; uint32_t buffer_offset
	}, ; 83: Xamarin.AndroidX.SwipeRefreshLayout
	%struct.CompressedAssemblyDescriptor {
		i32 9728, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8393368; uint32_t buffer_offset
	}, ; 84: Xamarin.AndroidX.VersionedParcelable
	%struct.CompressedAssemblyDescriptor {
		i32 62976, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8403096; uint32_t buffer_offset
	}, ; 85: Xamarin.AndroidX.ViewPager
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8466072; uint32_t buffer_offset
	}, ; 86: Xamarin.AndroidX.ViewPager2
	%struct.CompressedAssemblyDescriptor {
		i32 675840, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 8506520; uint32_t buffer_offset
	}, ; 87: Xamarin.Google.Android.Material
	%struct.CompressedAssemblyDescriptor {
		i32 80896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9182360; uint32_t buffer_offset
	}, ; 88: Xamarin.GooglePlayServices.Base
	%struct.CompressedAssemblyDescriptor {
		i32 29696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9263256; uint32_t buffer_offset
	}, ; 89: Xamarin.GooglePlayServices.Basement
	%struct.CompressedAssemblyDescriptor {
		i32 134144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9292952; uint32_t buffer_offset
	}, ; 90: Xamarin.GooglePlayServices.Location
	%struct.CompressedAssemblyDescriptor {
		i32 52736, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9427096; uint32_t buffer_offset
	}, ; 91: Xamarin.GooglePlayServices.Tasks
	%struct.CompressedAssemblyDescriptor {
		i32 90624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9479832; uint32_t buffer_offset
	}, ; 92: Xamarin.Kotlin.StdLib
	%struct.CompressedAssemblyDescriptor {
		i32 28672, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9570456; uint32_t buffer_offset
	}, ; 93: Xamarin.KotlinX.Coroutines.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 91648, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9599128; uint32_t buffer_offset
	}, ; 94: Xamarin.KotlinX.Serialization.Core.Jvm
	%struct.CompressedAssemblyDescriptor {
		i32 215552, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9690776; uint32_t buffer_offset
	}, ; 95: TRAIN
	%struct.CompressedAssemblyDescriptor {
		i32 229888, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 9906328; uint32_t buffer_offset
	}, ; 96: Microsoft.CSharp
	%struct.CompressedAssemblyDescriptor {
		i32 32256, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10136216; uint32_t buffer_offset
	}, ; 97: System.Collections.Concurrent
	%struct.CompressedAssemblyDescriptor {
		i32 19456, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10168472; uint32_t buffer_offset
	}, ; 98: System.Collections.NonGeneric
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10187928; uint32_t buffer_offset
	}, ; 99: System.Collections.Specialized
	%struct.CompressedAssemblyDescriptor {
		i32 40960, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10200216; uint32_t buffer_offset
	}, ; 100: System.Collections
	%struct.CompressedAssemblyDescriptor {
		i32 14336, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10241176; uint32_t buffer_offset
	}, ; 101: System.ComponentModel.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 144896, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10255512; uint32_t buffer_offset
	}, ; 102: System.ComponentModel.TypeConverter
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10400408; uint32_t buffer_offset
	}, ; 103: System.ComponentModel
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10405528; uint32_t buffer_offset
	}, ; 104: System.Console
	%struct.CompressedAssemblyDescriptor {
		i32 520192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10417816; uint32_t buffer_offset
	}, ; 105: System.Data.Common
	%struct.CompressedAssemblyDescriptor {
		i32 40448, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10938008; uint32_t buffer_offset
	}, ; 106: System.Diagnostics.DiagnosticSource
	%struct.CompressedAssemblyDescriptor {
		i32 19968, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10978456; uint32_t buffer_offset
	}, ; 107: System.Diagnostics.TraceSource
	%struct.CompressedAssemblyDescriptor {
		i32 36864, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 10998424; uint32_t buffer_offset
	}, ; 108: System.Drawing.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11035288; uint32_t buffer_offset
	}, ; 109: System.Drawing
	%struct.CompressedAssemblyDescriptor {
		i32 60416, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11040408; uint32_t buffer_offset
	}, ; 110: System.Formats.Asn1
	%struct.CompressedAssemblyDescriptor {
		i32 22016, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11100824; uint32_t buffer_offset
	}, ; 111: System.IO.Compression.Brotli
	%struct.CompressedAssemblyDescriptor {
		i32 32256, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11122840; uint32_t buffer_offset
	}, ; 112: System.IO.Compression
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11155096; uint32_t buffer_offset
	}, ; 113: System.IO.Pipelines
	%struct.CompressedAssemblyDescriptor {
		i32 433664, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11161240; uint32_t buffer_offset
	}, ; 114: System.Linq.Expressions
	%struct.CompressedAssemblyDescriptor {
		i32 74752, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11594904; uint32_t buffer_offset
	}, ; 115: System.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 14336, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11669656; uint32_t buffer_offset
	}, ; 116: System.Memory
	%struct.CompressedAssemblyDescriptor {
		i32 127488, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11683992; uint32_t buffer_offset
	}, ; 117: System.Net.Http
	%struct.CompressedAssemblyDescriptor {
		i32 39424, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11811480; uint32_t buffer_offset
	}, ; 118: System.Net.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 7680, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11850904; uint32_t buffer_offset
	}, ; 119: System.Net.Requests
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11858584; uint32_t buffer_offset
	}, ; 120: System.Numerics.Vectors
	%struct.CompressedAssemblyDescriptor {
		i32 20992, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11863704; uint32_t buffer_offset
	}, ; 121: System.ObjectModel
	%struct.CompressedAssemblyDescriptor {
		i32 74240, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11884696; uint32_t buffer_offset
	}, ; 122: System.Private.Uri
	%struct.CompressedAssemblyDescriptor {
		i32 45056, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 11958936; uint32_t buffer_offset
	}, ; 123: System.Private.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 1350656, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 12003992; uint32_t buffer_offset
	}, ; 124: System.Private.Xml
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13354648; uint32_t buffer_offset
	}, ; 125: System.Reflection.Emit.ILGeneration
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13359768; uint32_t buffer_offset
	}, ; 126: System.Reflection.Emit.Lightweight
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13364888; uint32_t buffer_offset
	}, ; 127: System.Reflection.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13370008; uint32_t buffer_offset
	}, ; 128: System.Runtime.InteropServices.RuntimeInformation
	%struct.CompressedAssemblyDescriptor {
		i32 9216, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13375128; uint32_t buffer_offset
	}, ; 129: System.Runtime.InteropServices
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13384344; uint32_t buffer_offset
	}, ; 130: System.Runtime.Loader
	%struct.CompressedAssemblyDescriptor {
		i32 90624, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13389464; uint32_t buffer_offset
	}, ; 131: System.Runtime.Numerics
	%struct.CompressedAssemblyDescriptor {
		i32 8192, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13480088; uint32_t buffer_offset
	}, ; 132: System.Runtime.Serialization.Formatters
	%struct.CompressedAssemblyDescriptor {
		i32 6144, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13488280; uint32_t buffer_offset
	}, ; 133: System.Runtime.Serialization.Primitives
	%struct.CompressedAssemblyDescriptor {
		i32 15360, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13494424; uint32_t buffer_offset
	}, ; 134: System.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 165376, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13509784; uint32_t buffer_offset
	}, ; 135: System.Security.Cryptography
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13675160; uint32_t buffer_offset
	}, ; 136: System.Text.Encoding.Extensions
	%struct.CompressedAssemblyDescriptor {
		i32 29696, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13680280; uint32_t buffer_offset
	}, ; 137: System.Text.Encodings.Web
	%struct.CompressedAssemblyDescriptor {
		i32 379904, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 13709976; uint32_t buffer_offset
	}, ; 138: System.Text.Json
	%struct.CompressedAssemblyDescriptor {
		i32 337408, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14089880; uint32_t buffer_offset
	}, ; 139: System.Text.RegularExpressions
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14427288; uint32_t buffer_offset
	}, ; 140: System.Threading.Thread
	%struct.CompressedAssemblyDescriptor {
		i32 12288, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14432408; uint32_t buffer_offset
	}, ; 141: System.Threading
	%struct.CompressedAssemblyDescriptor {
		i32 4608, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14444696; uint32_t buffer_offset
	}, ; 142: System.Xml.Linq
	%struct.CompressedAssemblyDescriptor {
		i32 5632, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14449304; uint32_t buffer_offset
	}, ; 143: System.Xml.ReaderWriter
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14454936; uint32_t buffer_offset
	}, ; 144: System.Xml.XDocument
	%struct.CompressedAssemblyDescriptor {
		i32 5120, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14460056; uint32_t buffer_offset
	}, ; 145: System
	%struct.CompressedAssemblyDescriptor {
		i32 13824, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14465176; uint32_t buffer_offset
	}, ; 146: netstandard
	%struct.CompressedAssemblyDescriptor {
		i32 2229760, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 14479000; uint32_t buffer_offset
	}, ; 147: System.Private.CoreLib
	%struct.CompressedAssemblyDescriptor {
		i32 171008, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16708760; uint32_t buffer_offset
	}, ; 148: Java.Interop
	%struct.CompressedAssemblyDescriptor {
		i32 21536, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16879768; uint32_t buffer_offset
	}, ; 149: Mono.Android.Runtime
	%struct.CompressedAssemblyDescriptor {
		i32 2061312, ; uint32_t uncompressed_file_size
		i1 false, ; bool loaded
		i32 16901304; uint32_t buffer_offset
	} ; 150: Mono.Android
], align 16

@uncompressed_assemblies_data_size = dso_local local_unnamed_addr constant i32 18962616, align 4

@uncompressed_assemblies_data_buffer = dso_local local_unnamed_addr global [18962616 x i8] zeroinitializer, align 16

; Metadata
!llvm.module.flags = !{!0, !1}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/10.0.1xx @ 01024bb616e7b80417a2c6d320885bfdb956f20a"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
