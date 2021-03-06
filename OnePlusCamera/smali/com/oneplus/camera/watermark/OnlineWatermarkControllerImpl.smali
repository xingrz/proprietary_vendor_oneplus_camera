.class public Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;
.super Lcom/oneplus/camera/CameraComponent;
.source "OnlineWatermarkControllerImpl.java"

# interfaces
.implements Lcom/oneplus/camera/watermark/OnlineWatermarkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;,
        Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$2;,
        Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;,
        Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-RotationSwitchesValues:[I = null

.field private static final DELAY_UPDATE_WATERMARK:J = 0xc8L

.field private static final ENBALE_WATERMARK_BOUNDS:Z = true

.field private static final MSG_APPLY_PARAMETERS:I = 0x2715

.field private static final MSG_ENTER:I = 0x2711

.field private static final MSG_EXIT:I = 0x2712

.field private static final MSG_SET_WATERMARK:I = 0x271a

.field private static final MSG_UPDATE_WATERMARK:I = 0x271f

.field private static final PROCESS_WATERMARK_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final SAVE_ARGB_WATERMARKS:Z = false

.field private static final SAVE_NV21_WATERMARKS:Z = true

.field private static final SAVE_PNG_WATERMARKS:Z = false

.field private static final SUFFIX_NV21A:Ljava/lang/String; = "_nv21a"

.field private static final WATERMARK_FILE_TEMPLATE:Ljava/lang/String; = "watermark_v%1$d_%2$d_%3$d_%4$d"

.field private static final WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

.field private static final WATERMARK_VERSION:I = 0x1


# instance fields
.field private final m_AlternativePictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_CachePath:Ljava/io/File;

.field private m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

.field private m_DeleteOldFiles:Z

.field private m_IsBokeh:Z

.field private m_IsEnter:Z

.field private m_IsSupported:Ljava/lang/Boolean;

.field private final m_PictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m_ProcessedTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

.field private m_SloganAuthorText:Ljava/lang/String;

.field private m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

.field private m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

.field private m_WatermarkBoundsTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private m_WatermarkFilePathsTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-RotationSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/Rotation;->values()[Lcom/oneplus/base/Rotation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/Rotation;->INVERSE_PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    invoke-virtual {v1}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-com-oneplus-base-RotationSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_ProcessedTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->onCaptureStarted()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermarkDelay(J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->PROCESS_WATERMARK_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/camera/CameraThread;)V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "Online Watermark Controller"

    invoke-direct {p0, v0, p1, v1}, Lcom/oneplus/camera/CameraComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    iput-boolean v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    sget-object v0, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    new-instance v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$1;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_AlternativePictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    new-instance v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$2;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_PictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    return-void
.end method

.method private applyParameters()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x2715

    invoke-static {p0, v0}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    sget-object v1, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    if-eq v0, v1, :cond_2

    const/4 v7, 0x1

    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "applyParameters() - Enabled : "

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, ", files : "

    iget-object v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    const-string/jumbo v5, ", bounds : "

    iget-object v6, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private applyParameters(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v1

    sget-object v2, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v1, v2}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_WATERMARK_BOUNDS_MAP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_WATERMARK_FILE_PATHS_MAP:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1, p1}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    return-void
.end method

.method private deleteWatermarkFiles()V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isCachePathAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteWatermarkFiles() - Failed to delete files, cache path is null."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v1, v2

    iget-object v5, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteWatermarkFiles() - File : "

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    return-void
.end method

.method private isCachePathAvailable()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/base/BaseApplication;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_AlternativePictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_PictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/Camera;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    :cond_0
    if-eqz p2, :cond_1

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_IS_WATERMARK_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p2, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_AlternativePictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    sget-object v0, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_PictureSizeChangedCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {p2, v0, v1}, Lcom/oneplus/camera/Camera;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    :cond_1
    return-void
.end method

.method private onCaptureStarted()V
    .locals 4

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    iget-object v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_ProcessedTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, v3, :cond_2

    monitor-exit v2

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCaptureStarted() - Wait for watermark processing"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->WATERMARK_PROCESSING_LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    iget-object v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_ProcessedTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v1, v3, :cond_2

    monitor-exit v2

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters()V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateWatermark()V
    .locals 31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v26

    if-nez v26, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    move/from16 v26, v0

    if-nez v26, :cond_1

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isCachePathAvailable()Z

    move-result v26

    if-nez v26, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "updateWatermark() - Failed to update files, cache path is null."

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "updateWatermark() - Start, watermark : "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    move-object/from16 v28, v0

    const-string/jumbo v29, ", Author text : "

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganAuthorText:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v26 .. v30}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    move-object/from16 v26, v0

    sget-object v27, Lcom/oneplus/camera/watermark/Watermark;->NONE:Lcom/oneplus/camera/watermark/Watermark;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    sget-object v26, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v27, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters(Ljava/util/Map;Ljava/util/Map;)V

    return-void

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v7

    sget-object v26, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/Camera;

    if-nez v6, :cond_4

    return-void

    :cond_4
    sget-object v26, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/oneplus/base/Rotation;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsBokeh:Z

    move/from16 v26, v0

    if-nez v26, :cond_5

    sget-object v26, Lcom/oneplus/camera/Camera;->PROP_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    :goto_0
    sget-object v26, Lcom/oneplus/camera/Camera;->PROP_ALTERNATIVE_PICTURE_SIZES:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v14, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/base/Rotation;->isPortrait()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Size;

    new-instance v26, Landroid/util/Size;

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v27

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v28

    invoke-direct/range {v26 .. v28}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v26, Lcom/oneplus/camera/Camera;->PROP_BOKEH_PICTURE_SIZE:Lcom/oneplus/base/PropertyKey;

    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/Size;

    goto :goto_0

    :cond_6
    sget-object v26, Lcom/oneplus/base/Rotation;->PORTRAIT:Lcom/oneplus/base/Rotation;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/16 v18, 0x10e

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->clear()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v10, v0, :cond_c

    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Size;

    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Size;

    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v27

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v28

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->calculateWatermarkBounds(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    invoke-static {}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->-getcom-oneplus-base-RotationSwitchesValues()[I

    move-result-object v26

    invoke-virtual/range {v17 .. v17}, Lcom/oneplus/base/Rotation;->ordinal()I

    move-result v27

    aget v26, v26, v27

    packed-switch v26, :pswitch_data_0

    :goto_4
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkBoundsTable:Ljava/util/Map;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CachePath:Ljava/io/File;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "/"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "watermark_v%1$d_%2$d_%3$d_%4$d"

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x1

    aput-object v29, v28, v30

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x2

    aput-object v29, v28, v30

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v30, 0x3

    aput-object v29, v28, v30

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_WatermarkFilePathsTable:Ljava/util/Map;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "_nv21a"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Ljava/io/File;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "_nv21a"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v26

    if-eqz v26, :cond_b

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_7
    const/16 v18, 0x5a

    goto/16 :goto_2

    :cond_8
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/util/Size;

    new-instance v26, Landroid/util/Size;

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getWidth()I

    move-result v27

    invoke-virtual/range {v19 .. v19}, Landroid/util/Size;->getHeight()I

    move-result v28

    invoke-direct/range {v26 .. v28}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    sget-object v26, Lcom/oneplus/base/Rotation;->LANDSCAPE:Lcom/oneplus/base/Rotation;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_a
    const/16 v18, 0xb4

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_4

    :pswitch_2
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v26

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v27

    sub-int v26, v26, v27

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v27

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v28

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v29

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_4

    :pswitch_3
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v26

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v27

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganAuthorText:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->setSubtitleText(Ljava/lang/String;)V

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    move-object/from16 v26, v0

    invoke-virtual {v15}, Landroid/util/Size;->getWidth()I

    move-result v27

    invoke-virtual {v15}, Landroid/util/Size;->getHeight()I

    move-result v28

    invoke-virtual/range {v26 .. v28}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;->createWatermarkBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v22

    new-instance v24, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    iput-object v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v24

    iput-object v9, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->filePath:Ljava/lang/String;

    move-object/from16 v0, v24

    iput-object v13, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->pictureSize:Landroid/util/Size;

    move/from16 v0, v18

    move-object/from16 v1, v24

    iput v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;->rotateDegree:I

    move-object/from16 v0, v24

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "updateWatermark() - End"

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    new-instance v21, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)V

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->addWatermarkInfo(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$WatermarkInfo;)V

    goto :goto_7

    :cond_e
    new-instance v26, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$6;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->setEndAction(Ljava/lang/Runnable;)V

    sget-object v26, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->PROCESS_WATERMARK_EXECUTOR:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    move-object/from16 v26, v0

    if-eqz v26, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;->cancel()V

    :cond_f
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_CurrentTask:Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$ProcessWatermarkTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "updateWatermark() - End"

    invoke-static/range {v26 .. v27}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateWatermarkDelay(J)V
    .locals 3

    const/16 v1, 0x271f

    invoke-static {p0, v1}, Lcom/oneplus/base/HandlerUtils;->hasMessages(Lcom/oneplus/base/HandlerObject;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, v1, p1, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IJ)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public enter(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isDependencyThread()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "enter() - Flags : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsBokeh:Z

    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->deleteWatermarkFiles()V

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    :goto_0
    return v1

    :cond_3
    const/16 v2, 0x2711

    const/4 v3, 0x0

    invoke-static {p0, v2, p1, v0, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public exit(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "exit() - Flags : "

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters(Ljava/util/Map;Ljava/util/Map;)V

    iput-boolean v3, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x2712

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v3, v1}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->PROP_IS_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsSupported:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/oneplus/camera/CameraComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->applyParameters()V

    goto :goto_0

    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->enter(I)Z

    goto :goto_0

    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->exit(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/oneplus/camera/watermark/Watermark;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->setWatermark(Lcom/oneplus/camera/watermark/Watermark;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_2
        0x2715 -> :sswitch_0
        0x271a -> :sswitch_3
        0x271f -> :sswitch_4
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 3

    invoke-super {p0}, Lcom/oneplus/camera/CameraComponent;->onInitialize()V

    new-instance v1, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-direct {v1}, Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;-><init>()V

    iput-object v1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganWatermarkDrawable:Lcom/oneplus/camera/watermark/SloganWatermarkDrawable;

    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$3;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAPTURE_ROTATION:Lcom/oneplus/base/PropertyKey;

    new-instance v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$4;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    sget-object v1, Lcom/oneplus/camera/CameraThread;->EVENT_CAPTURE_STARTED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$5;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl$5;-><init>(Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/CameraThread;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    sget-object v1, Lcom/oneplus/camera/CameraThread;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraThread;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/Camera;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->onCameraChanged(Lcom/oneplus/camera/Camera;Lcom/oneplus/camera/Camera;)V

    return-void
.end method

.method public setWatermark(Lcom/oneplus/camera/watermark/Watermark;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_Watermark:Lcom/oneplus/camera/watermark/Watermark;

    iget-object v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganAuthorText:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_SloganAuthorText:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_IsEnter:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->m_DeleteOldFiles:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->deleteWatermarkFiles()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/watermark/OnlineWatermarkControllerImpl;->updateWatermark()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    const/16 v1, 0x271a

    invoke-static {p0, v1, v0}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;ILjava/lang/Object;)Z

    goto :goto_0
.end method
