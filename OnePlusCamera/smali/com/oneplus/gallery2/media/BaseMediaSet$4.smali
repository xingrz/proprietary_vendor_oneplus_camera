.class Lcom/oneplus/gallery2/media/BaseMediaSet$4;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "BaseMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/BaseMediaSet;->onPrepareMediaChangeCallback()Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSet;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$4;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$4;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    return-void
.end method

.method public onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$4;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    return-void
.end method

.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$4;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaSet;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    return-void
.end method
