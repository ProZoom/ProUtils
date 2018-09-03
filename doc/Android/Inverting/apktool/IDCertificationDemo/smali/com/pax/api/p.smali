.class public Lcom/pax/api/p;
.super Ljava/lang/Exception;


# static fields
.field public static exceptionCode:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x63

    sput-byte v0, Lcom/pax/api/p;->exceptionCode:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
