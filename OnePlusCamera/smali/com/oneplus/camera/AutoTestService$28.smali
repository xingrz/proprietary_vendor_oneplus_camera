.class Lcom/oneplus/camera/AutoTestService$28;
.super Ljava/lang/Object;
.source "AutoTestService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/AutoTestService;->setStringState(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/AutoTestService;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/AutoTestService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/camera/AutoTestService$28;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/camera/AutoTestService$28;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v0}, Lcom/oneplus/camera/AutoTestService;->-get15(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/media/ResolutionManager;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/media/ResolutionManager;->PROP_PHOTO_RESOLUTION:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AutoTestService$28;->this$0:Lcom/oneplus/camera/AutoTestService;

    invoke-static {v2}, Lcom/oneplus/camera/AutoTestService;->-get18(Lcom/oneplus/camera/AutoTestService;)Lcom/oneplus/camera/media/Resolution;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/media/ResolutionManager;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    return-void
.end method
