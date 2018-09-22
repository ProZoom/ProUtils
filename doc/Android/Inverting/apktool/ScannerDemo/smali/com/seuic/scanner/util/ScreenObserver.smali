.class public Lcom/seuic/scanner/util/ScreenObserver;
.super Ljava/lang/Object;
.source "ScreenObserver.java"


# instance fields
.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/seuic/scanner/util/ScreenObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 16
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/seuic/scanner/util/ScreenObserver;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 17
    return-void
.end method


# virtual methods
.method public isScreenLocked()Z
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/seuic/scanner/util/ScreenObserver;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method
