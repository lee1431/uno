using Uno.Compiler.ExportTargetInterop;
using OpenGL;

namespace Uno.Platform
{
    using Xli;

    public abstract class GraphicsContextBackend : Uno.Runtime.Implementation.GraphicsContextHandle
    {
        internal static GraphicsContextBackend Instance;

        extern(CPLUSPLUS && !MOBILE)
        static GraphicsContextBackend()
        {
            Instance = new XliGraphicsContext();
        }

        extern(DOTNET)
        public static void SetInstance(GraphicsContextBackend instance)
        {
            Instance = instance;
        }

        extern(OPENGL)
        public abstract GLFramebufferHandle GetBackbufferGLHandle();
        public abstract int2 GetBackbufferSize();
        public abstract int2 GetBackbufferOffset();
        public abstract Recti GetBackbufferScissor();
        public abstract int GetRealBackbufferHeight();
    }
}
