.class public final Lcom/oneplus/camera/ui/OptionsPanelBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "OptionsPanelBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/camera/CameraActivity;->isBusinessCardMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
