.class public Lcom/amap/api/mapcore2d/dm;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DB.java"


# instance fields
.field private a:Lcom/amap/api/mapcore2d/dg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/amap/api/mapcore2d/dg;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p5, p0, Lcom/amap/api/mapcore2d/dm;->a:Lcom/amap/api/mapcore2d/dg;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dm;->a:Lcom/amap/api/mapcore2d/dg;

    invoke-interface {v0, p1}, Lcom/amap/api/mapcore2d/dg;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore2d/dm;->a:Lcom/amap/api/mapcore2d/dg;

    invoke-interface {v0, p1, p2, p3}, Lcom/amap/api/mapcore2d/dg;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
