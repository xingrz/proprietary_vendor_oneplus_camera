.class public final Lcom/oneplus/camera/ui/LevelGaugeUIBuilder;
.super Lcom/oneplus/camera/UIComponentBuilder;
.source "LevelGaugeUIBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lcom/oneplus/camera/ui/LevelGaugeUI;

    invoke-direct {p0, v0}, Lcom/oneplus/camera/UIComponentBuilder;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected create(Lcom/oneplus/camera/CameraActivity;)Lcom/oneplus/camera/CameraComponent;
    .locals 1

    new-instance v0, Lcom/oneplus/camera/ui/LevelGaugeUI;

    invoke-direct {v0, p1}, Lcom/oneplus/camera/ui/LevelGaugeUI;-><init>(Lcom/oneplus/camera/CameraActivity;)V

    return-object v0
.end method
