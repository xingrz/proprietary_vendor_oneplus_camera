.class Lcom/oneplus/camera/ui/ReviewScreenImpl$4$5;
.super Ljava/lang/Object;
.source "ReviewScreenImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/CameraCaptureEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ReviewScreenImpl$4;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$5;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0

    check-cast p3, Lcom/oneplus/camera/CameraCaptureEventArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$5;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/CameraCaptureEventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ">;",
            "Lcom/oneplus/camera/CameraCaptureEventArgs;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4$5;->this$1:Lcom/oneplus/camera/ui/ReviewScreenImpl$4;

    iget-object v0, v0, Lcom/oneplus/camera/ui/ReviewScreenImpl$4;->this$0:Lcom/oneplus/camera/ui/ReviewScreenImpl;

    invoke-static {v0, p3}, Lcom/oneplus/camera/ui/ReviewScreenImpl;->-wrap7(Lcom/oneplus/camera/ui/ReviewScreenImpl;Lcom/oneplus/camera/CameraCaptureEventArgs;)V

    return-void
.end method
