.class public abstract Lcom/oneplus/camera/CameraComponent;
.super Lcom/oneplus/camera/CameraThreadComponent;
.source "CameraComponent.java"


# instance fields
.field private final m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

.field private final m_IsCameraThreadComponent:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;Z)V
    .locals 1

    invoke-virtual {p2}, Lcom/oneplus/camera/CameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/camera/CameraThread;Z)V

    iput-object p2, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraActivity;ZZ)V
    .locals 6

    invoke-virtual {p2}, Lcom/oneplus/camera/CameraActivity;->getCameraThread()Lcom/oneplus/camera/CameraThread;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/base/component/ComponentOwner;Lcom/oneplus/camera/CameraThread;ZZ)V

    iput-object p2, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;Z)V

    invoke-virtual {p2}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity;

    iput-object v0, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;ZZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/camera/CameraThreadComponent;-><init>(Ljava/lang/String;Lcom/oneplus/camera/CameraThread;ZZ)V

    invoke-virtual {p2}, Lcom/oneplus/camera/CameraThread;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraActivity;

    iput-object v0, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    return-void
.end method


# virtual methods
.method protected getCamera()Lcom/oneplus/camera/Camera;
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/oneplus/camera/CameraThreadComponent;->getCamera()Lcom/oneplus/camera/Camera;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_CAMERA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera;

    return-object v0
.end method

.method public final getCameraActivity()Lcom/oneplus/camera/CameraActivity;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    return-object v0
.end method

.method protected getMediaType()Lcom/oneplus/camera/media/MediaType;
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/oneplus/camera/CameraThreadComponent;->getMediaType()Lcom/oneplus/camera/media/MediaType;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_MEDIA_TYPE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method protected getScreenSize()Lcom/oneplus/base/ScreenSize;
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/camera/CameraComponent;->m_IsCameraThreadComponent:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/oneplus/camera/CameraThreadComponent;->getScreenSize()Lcom/oneplus/base/ScreenSize;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SCREEN_SIZE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/ScreenSize;

    return-object v0
.end method

.method protected final getSettings()Lcom/oneplus/base/Settings;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/camera/CameraComponent;->m_CameraActivity:Lcom/oneplus/camera/CameraActivity;

    sget-object v1, Lcom/oneplus/camera/CameraActivity;->PROP_SETTINGS:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/CameraActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/Settings;

    return-object v0
.end method
