.class final Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;
.super Landroid/os/Handler;
.source "ListHandlerBaseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/ListHandlerBaseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalHandler"
.end annotation


# instance fields
.field private volatile m_Owner:Lcom/oneplus/base/ListHandlerBaseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/ListHandlerBaseObject",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/base/ListHandlerBaseObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/ListHandlerBaseObject",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;->m_Owner:Lcom/oneplus/base/ListHandlerBaseObject;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;->m_Owner:Lcom/oneplus/base/ListHandlerBaseObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/base/ListHandlerBaseObject;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "ListHandlerBaseObject"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Owner released, drop message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/base/ListHandlerBaseObject$InternalHandler;->m_Owner:Lcom/oneplus/base/ListHandlerBaseObject;

    return-void
.end method
