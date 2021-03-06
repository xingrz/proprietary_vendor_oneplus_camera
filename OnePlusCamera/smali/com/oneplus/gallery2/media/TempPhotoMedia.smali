.class final Lcom/oneplus/gallery2/media/TempPhotoMedia;
.super Lcom/oneplus/gallery2/media/TempMedia;
.source "TempPhotoMedia.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/PhotoMedia;


# static fields
.field private static final FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private m_Size:Landroid/util/Size;

.field private m_SizeCallbackHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/base/CallbackHandle",
            "<",
            "Lcom/oneplus/gallery2/media/Media$SizeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_SizeObtainingTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/oneplus/gallery2/media/MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/oneplus/gallery2/media/TempMedia;-><init>(Lcom/oneplus/gallery2/media/MediaType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/oneplus/gallery2/media/TempPhotoMedia;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    return-void
.end method

.method static synthetic access$2(Lcom/oneplus/gallery2/media/TempPhotoMedia;Landroid/util/Size;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->onSizeObtained(Landroid/util/Size;)V

    return-void
.end method

.method private onSizeObtained(Landroid/util/Size;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    iput-object v4, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeObtainingTask:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    :goto_1
    if-nez p1, :cond_2

    :goto_2
    move v2, v0

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_3
    if-ltz v3, :cond_4

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/CallbackHandle;

    invoke-virtual {v0}, Lcom/oneplus/base/CallbackHandle;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media$SizeCallback;

    if-nez v0, :cond_3

    :goto_4
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_3

    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-interface {v0, p0, v1, v2}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    goto :goto_4

    :cond_4
    iput-object v4, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public checkAnimatable(Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;)Lcom/oneplus/base/Handle;
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "CheckAnimatable"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/oneplus/gallery2/media/PhotoMedia$CheckAnimatableCallback;->onChecked(Lcom/oneplus/gallery2/media/PhotoMedia;Z)V

    goto :goto_0
.end method

.method public getDetails(Lcom/oneplus/gallery2/media/Media$DetailsCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->verifyAccess()V

    new-instance v0, Lcom/oneplus/gallery2/media/TempPhotoMedia$1;

    const-string/jumbo v1, "GetTempPhotoDetails"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/TempPhotoMedia$1;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$DetailsCallback;Landroid/os/Handler;)V

    sget-object v1, Lcom/oneplus/gallery2/media/TempPhotoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/oneplus/gallery2/media/TempPhotoMedia$2;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Lcom/oneplus/base/CallbackHandle;Lcom/oneplus/gallery2/media/Media$DetailsCallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getEncodedMedia()Lcom/oneplus/gallery2/media/PhotoMedia;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawMedia()Lcom/oneplus/gallery2/media/PhotoMedia;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize(Lcom/oneplus/gallery2/media/Media$SizeCallback;)Lcom/oneplus/base/Handle;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/TempPhotoMedia;->verifyAccess()V

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;

    const-string/jumbo v1, "GetPhotoSize"

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/oneplus/gallery2/media/TempPhotoMedia$3;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;Ljava/lang/String;Lcom/oneplus/gallery2/media/Media$SizeCallback;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    if-eqz v1, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeObtainingTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    :goto_1
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    :goto_2
    new-instance v0, Lcom/oneplus/base/EmptyHandle;

    const-string/jumbo v1, "GetPhotoSize"

    invoke-direct {v0, v1}, Lcom/oneplus/base/EmptyHandle;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-interface {p1, p0, v0, v1}, Lcom/oneplus/gallery2/media/Media$SizeCallback;->onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeCallbackHandles:Ljava/util/List;

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;

    invoke-direct {v1, p0}, Lcom/oneplus/gallery2/media/TempPhotoMedia$4;-><init>(Lcom/oneplus/gallery2/media/TempPhotoMedia;)V

    iput-object v1, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeObtainingTask:Ljava/lang/Runnable;

    sget-object v1, Lcom/oneplus/gallery2/media/TempPhotoMedia;->FILE_INFO_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_SizeObtainingTask:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1
.end method

.method public isBokeh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBurstGroup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRaw()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public peekIsAnimatable()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public peekSize()Landroid/util/Size;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/TempPhotoMedia;->m_Size:Landroid/util/Size;

    return-object v0
.end method
