.class public final enum Lcom/seuic/scanner/util/Appconfig$EndChar;
.super Ljava/lang/Enum;
.source "Appconfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/seuic/scanner/util/Appconfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EndChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seuic/scanner/util/Appconfig$EndChar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seuic/scanner/util/Appconfig$EndChar;

.field public static final enum ENTER:Lcom/seuic/scanner/util/Appconfig$EndChar;

.field public static final enum NONE:Lcom/seuic/scanner/util/Appconfig$EndChar;

.field public static final enum SPACE:Lcom/seuic/scanner/util/Appconfig$EndChar;

.field public static final enum TAB:Lcom/seuic/scanner/util/Appconfig$EndChar;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 560
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$EndChar;

    const-string v1, "ENTER"

    invoke-direct {v0, v1, v2}, Lcom/seuic/scanner/util/Appconfig$EndChar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$EndChar;->ENTER:Lcom/seuic/scanner/util/Appconfig$EndChar;

    .line 561
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$EndChar;

    const-string v1, "TAB"

    invoke-direct {v0, v1, v3}, Lcom/seuic/scanner/util/Appconfig$EndChar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$EndChar;->TAB:Lcom/seuic/scanner/util/Appconfig$EndChar;

    .line 562
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$EndChar;

    const-string v1, "SPACE"

    invoke-direct {v0, v1, v4}, Lcom/seuic/scanner/util/Appconfig$EndChar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$EndChar;->SPACE:Lcom/seuic/scanner/util/Appconfig$EndChar;

    .line 563
    new-instance v0, Lcom/seuic/scanner/util/Appconfig$EndChar;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/seuic/scanner/util/Appconfig$EndChar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$EndChar;->NONE:Lcom/seuic/scanner/util/Appconfig$EndChar;

    .line 559
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/seuic/scanner/util/Appconfig$EndChar;

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$EndChar;->ENTER:Lcom/seuic/scanner/util/Appconfig$EndChar;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$EndChar;->TAB:Lcom/seuic/scanner/util/Appconfig$EndChar;

    aput-object v1, v0, v3

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$EndChar;->SPACE:Lcom/seuic/scanner/util/Appconfig$EndChar;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seuic/scanner/util/Appconfig$EndChar;->NONE:Lcom/seuic/scanner/util/Appconfig$EndChar;

    aput-object v1, v0, v5

    sput-object v0, Lcom/seuic/scanner/util/Appconfig$EndChar;->$VALUES:[Lcom/seuic/scanner/util/Appconfig$EndChar;

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
    .line 559
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seuic/scanner/util/Appconfig$EndChar;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 559
    const-class v0, Lcom/seuic/scanner/util/Appconfig$EndChar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seuic/scanner/util/Appconfig$EndChar;

    return-object v0
.end method

.method public static values()[Lcom/seuic/scanner/util/Appconfig$EndChar;
    .locals 1

    .prologue
    .line 559
    sget-object v0, Lcom/seuic/scanner/util/Appconfig$EndChar;->$VALUES:[Lcom/seuic/scanner/util/Appconfig$EndChar;

    invoke-virtual {v0}, [Lcom/seuic/scanner/util/Appconfig$EndChar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seuic/scanner/util/Appconfig$EndChar;

    return-object v0
.end method
