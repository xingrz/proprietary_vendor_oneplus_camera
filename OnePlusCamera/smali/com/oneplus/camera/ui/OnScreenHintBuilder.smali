.class public final Lcom/oneplus/camera/ui/OnScreenHintBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "OnScreenHintBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/oneplus/base/component/ComponentCreationPriority;->ON_DEMAND:Lcom/oneplus/base/component/ComponentCreationPriority;

    const-class v1, Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Lcom/oneplus/base/component/ComponentCreationPriority;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1

    new-instance v0, Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
