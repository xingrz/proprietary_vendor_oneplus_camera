.class public abstract Lcom/oneplus/gallery/GalleryActivity;
.super Lcom/oneplus/base/ComponentOwnerActivity;
.source "GalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;,
        Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;,
        Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;,
        Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;
    }
.end annotation


# static fields
.field private static final DURATION_CHECK_INSTANCES_DELAY:J = 0xbb8L

.field public static final EXTRA_SHARED_GALLERY_ID:Ljava/lang/String; = "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

.field private static final MIN_BRIGHTNESS_VALUE_FOR_GALLERY:I = 0xe6

.field private static final PERMISSION_REQUEST_LIST:[Ljava/lang/String;

.field public static final PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/ScreenSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_CODE_COUNT:I = 0x40

.field private static final STATE_KEY_PID:Ljava/lang/String;

.field private static final STATE_KEY_PREFIX:Ljava/lang/String;

.field private static final m_CheckInstancesRunnable:Ljava/lang/Runnable;

.field private static final m_TrackingInstances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/oneplus/gallery/GalleryActivity;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private m_ActivityResultHandles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;",
            ">;"
        }
    .end annotation
.end field

.field private m_Gallery:Lcom/oneplus/gallery/Gallery;

.field private m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

.field private m_IsInstanceStateSaved:Z

.field private m_IsSharedGallery:Z

.field private final m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_ScreenSize:Lcom/oneplus/base/ScreenSize;

.field private final m_StatusBarStyleHandles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

.field private m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v4, 0x1

    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ScreenSize"

    const-class v2, Lcom/oneplus/base/ScreenSize;

    const-class v3, Lcom/oneplus/gallery/GalleryActivity;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/GalleryActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/gallery/GalleryActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/GalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->STATE_KEY_PREFIX:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "PID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    new-instance v0, Lcom/oneplus/gallery/GalleryActivity$3;

    invoke-direct {v0}, Lcom/oneplus/gallery/GalleryActivity$3;-><init>()V

    sput-object v0, Lcom/oneplus/gallery/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/base/ComponentOwnerActivity;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    new-instance v0, Lcom/oneplus/gallery/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GalleryActivity$1;-><init>(Lcom/oneplus/gallery/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    new-instance v0, Lcom/oneplus/gallery/GalleryActivity$2;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GalleryActivity$2;-><init>(Lcom/oneplus/gallery/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    new-instance v0, Lcom/oneplus/gallery/GalleryActivity$4;

    invoke-direct {v0, p0}, Lcom/oneplus/gallery/GalleryActivity$4;-><init>(Lcom/oneplus/gallery/GalleryActivity;)V

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$0(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->checkInstances(J)V

    return-void
.end method

.method static synthetic access$1(Lcom/oneplus/gallery/GalleryActivity;)Lcom/oneplus/base/Handle;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    return-object v0
.end method

.method static synthetic access$2(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/base/Handle;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    return-void
.end method

.method static synthetic access$3(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/gallery/GalleryActivity;->restoreStatusBarStyle(Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;)V

    return-void
.end method

.method private checkBacklight()V
    .locals 3

    const/16 v2, 0xe6

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Lcom/oneplus/base/Device;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "checkBacklight() - device not supported"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v1, "15801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;->getCurrentBrightness()I

    move-result v0

    if-gt v0, v2, :cond_2

    if-gtz v0, :cond_3

    :goto_0
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/oneplus/gallery/GalleryActivity;->updateBacklightBrightness(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Lcom/oneplus/gallery/GalleryActivity;->updateBacklightBrightness(I)V

    goto :goto_0
.end method

.method private static checkInstances(J)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_3

    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "GalleryActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "checkInstances() - Alive instances : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/gallery/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->m_CheckInstancesRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getCurrentBrightness()I
    .locals 8

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v4, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getCurrentBrightness() - brightnessValue : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    goto :goto_0

    :cond_0
    if-nez v3, :cond_1

    :goto_1
    return v2

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_4

    :goto_3
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCurrentBrightness() - failed to getBrightnessValue"

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    if-nez v3, :cond_2

    :goto_4
    :try_start_4
    throw v0

    :catchall_2
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :cond_3
    move-object v1, v0

    goto :goto_3

    :cond_4
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_3
.end method

.method private restoreStatusBarStyle(Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->verifyAccess()V

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;->updateStatusBarStyle()V

    goto :goto_1
.end method

.method private static trackInstance(Lcom/oneplus/gallery/GalleryActivity;)V
    .locals 2

    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->m_TrackingInstances:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->checkInstances(J)V

    return-void
.end method

.method private updateBacklightBrightness(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateBacklightBrightness() - Update brightness : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float v0, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private updateScreenSize()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    new-instance v1, Lcom/oneplus/base/ScreenSize;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    invoke-virtual {p0, v1, v0, v2}, Lcom/oneplus/gallery/GalleryActivity;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private updateStatusBarStyle()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    or-int/lit16 v0, v1, 0x2000

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;

    iget-boolean v0, v0, Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;->isLightStyle:Z

    if-eqz v0, :cond_1

    or-int/lit16 v0, v1, 0x2000

    goto :goto_0

    :cond_1
    and-int/lit16 v0, v1, -0x2001

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v1, -0x2001

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/gallery/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "dispatchTouchEvent() - Error when dispatch touch event"

    invoke-static {v1, v2, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
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

    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    if-eq p1, v0, :cond_2

    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ScreenSize:Lcom/oneplus/base/ScreenSize;

    return-object v0

    :cond_2
    sget-object v0, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    return-object v0
.end method

.method public final getGallery()Lcom/oneplus/gallery/Gallery;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    return-object v0
.end method

.method protected getLaunchType()Lcom/oneplus/gallery/ActivityLaunchType;
    .locals 1

    sget-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->UNKNOWN:Lcom/oneplus/gallery/ActivityLaunchType;

    return-object v0
.end method

.method protected getRequestPermissions(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->getRequestPermissions(Ljava/util/List;)V

    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->PERMISSION_REQUEST_LIST:[Ljava/lang/String;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getRequestPermissions() - Add request permission: "

    invoke-static {v4, v5, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method public goBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isServiceMode()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsSharedGallery:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/base/ComponentOwnerActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, v0, Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;

    invoke-interface {v1, v0, p2, p3}, Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->goBack()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;->updateScreenSize()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/oneplus/gallery/GalleryActivity;->trackInstance(Lcom/oneplus/gallery/GalleryActivity;)V

    if-nez p1, :cond_2

    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v0, :cond_4

    :goto_1
    invoke-static {v0}, Lcom/oneplus/gallery/Gallery;->fromId(Ljava/lang/String;)Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onCreate() - Use shared Gallery : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    invoke-virtual {v4}, Lcom/oneplus/gallery/Gallery;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_7

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    invoke-virtual {v0, p0}, Lcom/oneplus/gallery/Gallery;->attachActivity(Lcom/oneplus/gallery/GalleryActivity;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    sget-object v2, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    sget-object v2, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v3, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/gallery/Gallery;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;->updateScreenSize()V

    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "GalleryActivity.InstanceState"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;

    if-nez v0, :cond_9

    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - new sparse array"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    :goto_3
    if-nez v0, :cond_a

    :goto_4
    invoke-virtual {p0, p1, v1}, Lcom/oneplus/gallery/GalleryActivity;->onCreate(Landroid/os/Bundle;Ljava/util/Map;)V

    return-void

    :cond_2
    sget-object v0, Lcom/oneplus/gallery/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - activity is recreate, sharedGalleryId: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate() - Different Pid, clear saved instance state"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    move-object p1, v1

    goto/16 :goto_0

    :cond_4
    if-nez v2, :cond_5

    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate() - Create new Gallery"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryApplication;->createGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    iput-boolean v4, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsSharedGallery:Z

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsSharedGallery:Z

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onCreate() - m_IsSharedGallery:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsSharedGallery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate() - Fail to attach to Gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->finish()V

    return-void

    :cond_9
    iget-object v2, v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - Use existent stateFragment activityResultHandles."

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    goto/16 :goto_3

    :cond_a
    iget-object v1, v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    goto/16 :goto_4
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsSharedGallery:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getLaunchType()Lcom/oneplus/gallery/ActivityLaunchType;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/gallery/GalleryApplication;->notifyActivityLaunched(Lcom/oneplus/gallery/GalleryActivity;Lcom/oneplus/gallery/ActivityLaunchType;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_NAVIGATION_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->m_NavBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    sget-object v1, Lcom/oneplus/gallery/Gallery;->PROP_IS_STATUS_BAR_VISIBLE:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarVisibilityCallback:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/gallery/Gallery;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_GalleryAttachHandle:Lcom/oneplus/base/Handle;

    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsInstanceStateSaved:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsInstanceStateSaved:Z

    if-eqz v0, :cond_3

    :cond_1
    iput-object v4, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onDestroy()V

    const-wide/16 v0, 0xbb8

    invoke-static {v0, v1}, Lcom/oneplus/gallery/GalleryActivity;->checkInstances(J)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsSharedGallery:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy() - Release Gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    invoke-virtual {v0}, Lcom/oneplus/gallery/Gallery;->release()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x40

    move v1, v0

    :goto_1
    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;

    if-nez v0, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;->callback:Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;

    invoke-interface {v2, v0, v3, v4}, Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;->onActivityResult(Lcom/oneplus/base/Handle;ILandroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onInitialPermissionsRequestCompleted([Ljava/lang/String;[I)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v4

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v0, v3

    :goto_0
    if-ltz v2, :cond_3

    iget-object v5, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "onInitialPermissionsRequestCompleted() - Permission : "

    aget-object v7, p1, v2

    const-string/jumbo v8, ", result : "

    aget v9, p2, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    aget v5, p2, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Lcom/oneplus/gallery/GalleryApplication;->notifyPermissionGranted(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    aget-object v0, p1, v2

    invoke-virtual {v4, v0}, Lcom/oneplus/gallery/GalleryApplication;->notifyPermissionDenied(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    return v3

    :cond_4
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onInitialPermissionsRequestCompleted() - Some permissions are not granted"

    invoke-static {v0, v2}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->finish()V

    return v1
.end method

.method protected onNavigationBarVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v2, "GalleryActivity.InstanceState"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/GalleryActivity;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    return-void

    :cond_0
    iget-object v0, v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsInstanceStateSaved:Z

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;->updateStatusBarStyle()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "GalleryActivity.InstanceState"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v1, Lcom/oneplus/gallery/GalleryActivity;->STATE_KEY_PID:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    if-nez v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    iput-object v1, v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;->activityResultHandles:Landroid/util/SparseArray;

    iget-object v0, v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;->extras:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/GalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V

    invoke-super {p0, p1}, Lcom/oneplus/base/ComponentOwnerActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_IsInstanceStateSaved:Z

    return-void

    :cond_0
    new-instance v0, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;

    invoke-direct {v0}, Lcom/oneplus/gallery/GalleryActivity$InstanceStateFragment;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string/jumbo v2, "GalleryActivity.InstanceState"

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "com.oneplus.gallery.GalleryActivity.extra.SHARED_GALLERY_ID"

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->m_Gallery:Lcom/oneplus/gallery/Gallery;

    invoke-virtual {v2}, Lcom/oneplus/gallery/Gallery;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onStart()V

    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/base/Handle;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ThreadMonitorHandle:Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method protected onStatusBarVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-static {}, Lcom/oneplus/gallery/GalleryApplication;->current()Lcom/oneplus/gallery/GalleryApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/GalleryApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StopThreadMonitorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0}, Lcom/oneplus/base/ComponentOwnerActivity;->onStop()V

    return-void
.end method

.method public setStatusBarStyle(Z)Lcom/oneplus/base/Handle;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->verifyAccess()V

    new-instance v0, Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/gallery/GalleryActivity$StatusBarStyleHandle;-><init>(Lcom/oneplus/gallery/GalleryActivity;Z)V

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_StatusBarStyleHandles:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/oneplus/gallery/GalleryActivity;->updateStatusBarStyle()V

    return-object v0
.end method

.method protected setSystemUiVisibility(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->getGallery()Lcom/oneplus/gallery/Gallery;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSystemUiVisibility() - Visible: "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_1

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    invoke-virtual {v0, v4}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSystemUiVisibility() - No gallery"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/Gallery;->setNavigationBarVisibility(Z)Lcom/oneplus/base/Handle;

    invoke-virtual {v0, v5}, Lcom/oneplus/gallery/Gallery;->setStatusBarVisibility(Z)Lcom/oneplus/base/Handle;

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;)Lcom/oneplus/base/Handle;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery/GalleryActivity;->verifyAccess()V

    const/16 v0, 0x40

    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startActivityForResult() - No intent"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    if-lez v0, :cond_2

    new-instance v1, Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;

    invoke-direct {v1, p2}, Lcom/oneplus/gallery/GalleryActivity$ActivityResultHandle;-><init>(Lcom/oneplus/gallery/GalleryActivity$ActivityResultCallback;)V

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/gallery/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startActivityForResult() - No available request code"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/oneplus/gallery/GalleryActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startActivityForResult() - Fail to start activity"

    invoke-static {v2, v3, v1}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/oneplus/gallery/GalleryActivity;->m_ActivityResultHandles:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    return-object v4
.end method
