.class public Lcom/oneplus/camera/CameraThread$VideoParams;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoParams"
.end annotation


# instance fields
.field public captureMode:Lcom/oneplus/camera/capturemode/CaptureMode;

.field public maxDurationSeconds:J

.field public maxFileSize:J

.field public resolution:Lcom/oneplus/camera/media/Resolution;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/media/Resolution;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    iput-wide v0, p0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/camera/CameraThread$VideoParams;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraThread$VideoParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread$VideoParams;->clone()Lcom/oneplus/camera/CameraThread$VideoParams;

    move-result-object v0

    return-object v0
.end method
