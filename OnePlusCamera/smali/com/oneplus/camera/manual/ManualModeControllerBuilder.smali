.class public Lcom/oneplus/camera/manual/ManualModeControllerBuilder;
.super Lcom/oneplus/camera/CameraThreadComponentBuilder;
.source "ManualModeControllerBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->LAUNCH:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/CameraThreadComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraThread;)Lcom/oneplus/camera/CameraThreadComponent;
    .locals 1

    new-instance v0, Lcom/oneplus/camera/manual/ManualModeController;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/manual/ManualModeController;-><init>(Lcom/oneplus/camera/CameraThread;)V

    return-object v0
.end method
