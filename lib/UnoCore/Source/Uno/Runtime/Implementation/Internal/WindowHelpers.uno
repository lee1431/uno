using Uno.Platform;

namespace Uno.Runtime.Implementation.Internal
{
    public extern(!MOBILE) static class WindowHelpers
    {
        [Obsolete]
        public static PlatformWindowHandle GetPlatformWindowHandle(Window wnd)
        {
            return wnd.Backend;
        }
    }
}
