.class final Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;
.super Lcom/oneplus/base/Handle;
.source "AudioManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/media/AudioManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StreamHandle"
.end annotation


# instance fields
.field public final flags:I

.field public final sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

.field public streamId:I

.field final synthetic this$0:Lcom/oneplus/camera/media/AudioManagerImpl;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;I)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->this$0:Lcom/oneplus/camera/media/AudioManagerImpl;

    const-string/jumbo v0, "SoundStream"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->sound:Lcom/oneplus/camera/media/AudioManagerImpl$SoundHandle;

    iput p3, p0, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->flags:I

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;->this$0:Lcom/oneplus/camera/media/AudioManagerImpl;

    invoke-static {v0, p0}, Lcom/oneplus/camera/media/AudioManagerImpl;->-wrap1(Lcom/oneplus/camera/media/AudioManagerImpl;Lcom/oneplus/camera/media/AudioManagerImpl$StreamHandle;)V

    return-void
.end method
