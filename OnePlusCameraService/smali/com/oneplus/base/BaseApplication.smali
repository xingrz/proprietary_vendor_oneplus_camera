.class public abstract Lcom/oneplus/base/BaseApplication;
.super Landroid/app/Application;
.source "BaseApplication.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentOwner;


# static fields
.field private static INIT_CHECKING_PERMISSIONS:[Ljava/lang/String; = null

.field public static final LOG_EVENT_HANDLER:I = 0x400

.field public static final LOG_EVENT_HANDLER_CHANGE:I = 0x200

.field public static final LOG_EVENT_RAISE:I = 0x100

.field public static final LOG_PROPERTY_CALLBACK:I = 0x4

.field public static final LOG_PROPERTY_CALLBACK_CHANGE:I = 0x2

.field public static final LOG_PROPERTY_CHANGE:I = 0x1

.field public static final PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_LOCALE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATIC_TAG:Ljava/lang/String; = "BaseApplication"

.field private static volatile m_Current:Lcom/oneplus/base/BaseApplication;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field private final m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

.field private final m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

.field private volatile m_Handler:Landroid/os/Handler;

.field private volatile m_Locale:Ljava/util/Locale;

.field private final m_MainThread:Ljava/lang/Thread;


# direct methods
.method static synthetic -get0(Lcom/oneplus/base/BaseApplication;)Lcom/oneplus/base/BaseObjectAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsReadStoragePermissionGranted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseApplication;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsRtlLayout"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseApplication;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "IsWriteStoragePermissionGranted"

    const-class v2, Ljava/lang/Boolean;

    const-class v3, Lcom/oneplus/base/BaseApplication;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "Locale"

    const-class v2, Ljava/util/Locale;

    const-class v3, Lcom/oneplus/base/BaseApplication;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/base/BaseApplication;->INIT_CHECKING_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_Locale:Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/oneplus/base/BaseApplication;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseApplication;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_MainThread:Ljava/lang/Thread;

    new-instance v0, Lcom/oneplus/base/BaseObjectAdapter;

    iget-object v1, p0, Lcom/oneplus/base/BaseApplication;->TAG:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/base/BaseObjectAdapter;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    new-instance v0, Lcom/oneplus/base/component/ComponentManager;

    invoke-direct {v0}, Lcom/oneplus/base/component/ComponentManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_ADDED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/base/BaseApplication$1;

    invoke-direct {v2, p0}, Lcom/oneplus/base/BaseApplication$1;-><init>(Lcom/oneplus/base/BaseApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v1, Lcom/oneplus/base/component/ComponentManager;->EVENT_COMPONENT_REMOVED:Lcom/oneplus/base/EventKey;

    new-instance v2, Lcom/oneplus/base/BaseApplication$2;

    invoke-direct {v2, p0}, Lcom/oneplus/base/BaseApplication$2;-><init>(Lcom/oneplus/base/BaseApplication;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/component/ComponentManager;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/base/BaseApplication;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/base/BaseApplication;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0, v3}, Lcom/oneplus/base/BaseApplication;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    return-void
.end method

.method public static current()Lcom/oneplus/base/BaseApplication;
    .locals 4

    sget-object v1, Lcom/oneplus/base/BaseApplication;->m_Current:Lcom/oneplus/base/BaseApplication;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/oneplus/base/BaseApplication;->m_Current:Lcom/oneplus/base/BaseApplication;

    return-object v1

    :cond_0
    const-class v2, Lcom/oneplus/base/BaseApplication;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseApplication;->m_Current:Lcom/oneplus/base/BaseApplication;

    if-nez v1, :cond_1

    const-string/jumbo v1, "BaseApplication"

    const-string/jumbo v3, "current() - Wait for instance [start]"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-class v1, Lcom/oneplus/base/BaseApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    const-string/jumbo v1, "BaseApplication"

    const-string/jumbo v3, "current() - Wait for instance [end]"

    invoke-static {v1, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v2

    sget-object v1, Lcom/oneplus/base/BaseApplication;->m_Current:Lcom/oneplus/base/BaseApplication;

    return-object v1

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "BaseApplication"

    const-string/jumbo v3, "current() - Interrupted"

    invoke-static {v1, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    return-void
.end method

.method public final addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/base/BaseApplication;->verifyAccess()V

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->addComponentBuilders([Lcom/oneplus/base/component/ComponentBuilder;[Ljava/lang/Object;)V

    return-void
.end method

.method public addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->addHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    return-void
.end method

.method protected final disableEventLogs(Lcom/oneplus/base/EventKey;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disableEventLogs(Lcom/oneplus/base/EventKey;I)V

    return-void
.end method

.method protected final disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->disablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    return-void
.end method

.method protected final enableEventLogs(Lcom/oneplus/base/EventKey;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventKey",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enableEventLogs(Lcom/oneplus/base/EventKey;I)V

    return-void
.end method

.method protected final enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertyKey",
            "<*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->enablePropertyLogs(Lcom/oneplus/base/PropertyKey;I)V

    return-void
.end method

.method public findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)TTComponent;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponent(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public findComponents(Ljava/lang/Class;)[Lcom/oneplus/base/component/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TComponent::",
            "Lcom/oneplus/base/component/Component;",
            ">(",
            "Ljava/lang/Class",
            "<TTComponent;>;)[TTComponent;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/base/component/ComponentManager;->findComponents(Ljava/lang/Class;[Ljava/lang/Object;)[Lcom/oneplus/base/component/Component;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;)TTValue;"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_Locale:Ljava/util/Locale;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/BaseObjectAdapter;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public isDependencyThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseApplication;->m_MainThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyPermissionDenied(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/base/BaseApplication;->verifyAccess()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public notifyPermissionGranted(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/oneplus/base/BaseApplication;->verifyAccess()V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_READ_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/base/BaseApplication;->PROP_IS_WRITE_STORAGE_PERM_GRANTED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/base/BaseApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;TTValue;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/base/BaseObjectAdapter;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/base/BaseApplication;->m_Locale:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    sget-object v3, Lcom/oneplus/base/BaseApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/base/BaseApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/oneplus/base/BaseApplication;->m_Locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_Locale:Ljava/util/Locale;

    iget-object v3, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    sget-object v4, Lcom/oneplus/base/BaseApplication;->PROP_LOCALE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v3, v4, v1, v0}, Lcom/oneplus/base/BaseObjectAdapter;->notifyPropertyChanged(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreate()V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    iget-object v2, p0, Lcom/oneplus/base/BaseApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onCreate()"

    invoke-static {v2, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/base/ThreadMonitor;->prepare()V

    invoke-virtual {p0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/oneplus/base/BaseApplication;->m_Locale:Ljava/util/Locale;

    sget-object v5, Lcom/oneplus/base/BaseApplication;->PROP_IS_RTL_LAYOUT:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0}, Lcom/oneplus/base/BaseApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Lcom/oneplus/base/BaseApplication;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    sget-object v2, Lcom/oneplus/base/BaseApplication;->INIT_CHECKING_PERMISSIONS:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    sget-object v2, Lcom/oneplus/base/BaseApplication;->INIT_CHECKING_PERMISSIONS:[Ljava/lang/String;

    aget-object v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/oneplus/base/BaseApplication;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/oneplus/base/BaseApplication;->notifyPermissionGranted(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const-class v5, Lcom/oneplus/base/BaseApplication;

    monitor-enter v5

    :try_start_0
    sget-object v2, Lcom/oneplus/base/BaseApplication;->m_Current:Lcom/oneplus/base/BaseApplication;

    if-nez v2, :cond_3

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/oneplus/base/BaseApplication;->m_Handler:Landroid/os/Handler;

    :goto_2
    sput-object p0, Lcom/oneplus/base/BaseApplication;->m_Current:Lcom/oneplus/base/BaseApplication;

    const-class v2, Lcom/oneplus/base/BaseApplication;

    invoke-virtual {v2}, Ljava/lang/Class;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget-object v2, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    sget-object v5, Lcom/oneplus/base/component/ComponentCreationPriority;->NORMAL:Lcom/oneplus/base/component/ComponentCreationPriority;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-virtual {v2, v5, v3}, Lcom/oneplus/base/component/ComponentManager;->createComponents(Lcom/oneplus/base/component/ComponentCreationPriority;[Ljava/lang/Object;)V

    return-void

    :cond_3
    :try_start_1
    sget-object v2, Lcom/oneplus/base/BaseApplication;->m_Current:Lcom/oneplus/base/BaseApplication;

    iget-object v2, v2, Lcom/oneplus/base/BaseApplication;->m_Handler:Landroid/os/Handler;

    iput-object v2, p0, Lcom/oneplus/base/BaseApplication;->m_Handler:Landroid/os/Handler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method public onTerminate()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0}, Lcom/oneplus/base/component/ComponentManager;->release()V

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseObjectAdapter;->release()V

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method protected raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;TTArgs;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->raise(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;",
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<TTValue;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    return-void
.end method

.method public removeComponent(Lcom/oneplus/base/component/Component;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_ComponentManager:Lcom/oneplus/base/component/ComponentManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/base/component/ComponentManager;->removeComponent(Lcom/oneplus/base/component/Component;)V

    return-void
.end method

.method public removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TArgs:",
            "Lcom/oneplus/base/EventArgs;",
            ">(",
            "Lcom/oneplus/base/EventKey",
            "<TTArgs;>;",
            "Lcom/oneplus/base/EventHandler",
            "<TTArgs;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->removeHandler(Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventHandler;)V

    return-void
.end method

.method public set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/base/PropertyKey",
            "<TTValue;>;TTValue;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/base/BaseApplication;->m_BaseObjectAdapter:Lcom/oneplus/base/BaseObjectAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/base/BaseObjectAdapter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected final verifyAccess()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/base/BaseApplication;->m_MainThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "Cross-thread access"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
