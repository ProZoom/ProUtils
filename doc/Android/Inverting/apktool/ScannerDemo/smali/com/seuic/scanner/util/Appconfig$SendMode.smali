.class public final enum Lcom/seuic/scanner/util/Appconfig$SendMode;
.super Ljava/lang/Enum;
.source "Appconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/util/Appconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seuic/scanner/util/Appconfig$SendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seuic/scanner/util/Appconfig$SendMode;

.field public static final enum BROADCAST:Lcom/seuic/scanner/util/Appconfig$SendMode;

.field public static final enum CLIPBOARD:Lcom/seuic/scanner/util/Appconfig$SendMode;

.field public static final enum EMUKEY:Lcom/seuic/scanner/util/Appconfig$SendMode;

.field public static final enum FOCUS:Lcom/seuic/scanner/util/Appconfig$SendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 553
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$SendMode;

    const-string v1, "FOCUS"

    invoke-direct {v0, v1, v2}, Lcom/seuic/scanner/util/Appconfig$SendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$SendMode;->FOCUS:Lcom/seuic/scanner/util/Appconfig$SendMode;

    .line 554
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$SendMode;

    const-string v1, "BROADCAST"

    invoke-direct {v0, v1, v3}, Lcom/seuic/scanner/util/Appconfig$SendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$SendMode;->BROADCAST:Lcom/seuic/scanner/util/Appconfig$SendMode;

    .line 555
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$SendMode;

    const-string v1, "EMUKEY"

    invoke-direct {v0, v1, v4}, Lcom/seuic/scanner/util/Appconfig$SendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$SendMode;->EMUKEY:Lcom/seuic/scanner/util/Appconfig$SendMode;

    .line 556
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$SendMode;

    const-string v1, "CLIPBOARD"

    invoke-direct {v0, v1, v5}, Lcom/seuic/scanner/util/Appconfig$SendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$SendMode;->CLIPBOARD:Lcom/seuic/scanner/util/Appconfig$SendMode;

    .line 552
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/seuic/scanner/util/Appconfig$SendMode;

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->FOCUS:Lcom/seuic/scanner/util/Appconfig$SendMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->BROADCAST:Lcom/seuic/scanner/util/Appconfig$SendMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->EMUKEY:Lcom/seuic/scanner/util/Appconfig$SendMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$SendMode;->CLIPBOARD:Lcom/seuic/scanner/util/Appconfig$SendMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$SendMode;->$VALUES:[Lcom/seuic/scanner/util/Appconfig$SendMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 552
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seuic/scanner/util/Appconfig$SendMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 552
    const-class v0, Lcom/seuic/scanner/util/Appconfig$SendMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seuic/scanner/util/Appconfig$SendMode;

    return-object v0
.end method

.method public static values()[Lcom/seuic/scanner/util/Appconfig$SendMode;
    .locals 1

    .prologue
    .line 552
    sget-object v0, Lcom/seuic/scanner/util/Appconfig$SendMode;->$VALUES:[Lcom/seuic/scanner/util/Appconfig$SendMode;

    invoke-virtual {v0}, [Lcom/seuic/scanner/util/Appconfig$SendMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seuic/scanner/util/Appconfig$SendMode;

    return-object v0
.end method
