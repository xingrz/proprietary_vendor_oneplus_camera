.class Lcom/oneplus/gallery/BurstViewer$18;
.super Ljava/lang/Object;
.source "BurstViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/BurstViewer;->saveSelectedMedia(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/BurstViewer;

.field final synthetic val$closeViewerWhenCompleted:Z

.field final synthetic val$mediaToDelete:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/BurstViewer;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/gallery/BurstViewer$18;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iput-object p2, p0, Lcom/oneplus/gallery/BurstViewer$18;->val$mediaToDelete:Ljava/util/List;

    iput-boolean p3, p0, Lcom/oneplus/gallery/BurstViewer$18;->val$closeViewerWhenCompleted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/oneplus/gallery/BurstViewer$18;->this$0:Lcom/oneplus/gallery/BurstViewer;

    iget-object v1, p0, Lcom/oneplus/gallery/BurstViewer$18;->val$mediaToDelete:Ljava/util/List;

    iget-boolean v2, p0, Lcom/oneplus/gallery/BurstViewer$18;->val$closeViewerWhenCompleted:Z

    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery/BurstViewer;->-wrap3(Lcom/oneplus/gallery/BurstViewer;Ljava/util/Collection;Z)V

    return-void
.end method
