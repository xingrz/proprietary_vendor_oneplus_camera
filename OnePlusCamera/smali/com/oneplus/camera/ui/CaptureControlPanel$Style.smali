.class public final enum Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
.super Ljava/lang/Enum;
.source "CaptureControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/CaptureControlPanel$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

.field public static final enum DEFAULT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

.field public static final enum TRANSPARENT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    const-string/jumbo v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->DEFAULT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    new-instance v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    const-string/jumbo v1, "TRANSPARENT"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->TRANSPARENT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    sget-object v1, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->DEFAULT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->TRANSPARENT:Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->$VALUES:[Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    .locals 1

    const-class v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/CaptureControlPanel$Style;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/ui/CaptureControlPanel$Style;->$VALUES:[Lcom/oneplus/camera/ui/CaptureControlPanel$Style;

    return-object v0
.end method
