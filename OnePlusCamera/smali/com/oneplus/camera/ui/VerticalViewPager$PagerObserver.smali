.class Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "VerticalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/VerticalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/VerticalViewPager;


# direct methods
.method private constructor <init>(Lcom/oneplus/camera/ui/VerticalViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/oneplus/camera/ui/VerticalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/ui/VerticalViewPager;Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;-><init>(Lcom/oneplus/camera/ui/VerticalViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/oneplus/camera/ui/VerticalViewPager;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/ui/VerticalViewPager$PagerObserver;->this$0:Lcom/oneplus/camera/ui/VerticalViewPager;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/VerticalViewPager;->dataSetChanged()V

    return-void
.end method
