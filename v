<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>V Electronics - System Upgrade</title>
    <style>
        :root {
            --brand-blue: #004b87;
            --brand-light: #e6f0fa;
            --text-main: #1d1d1f;
            --text-secondary: #86868b;
            --bg-base: #f5f5f7;
            --glass-bg: rgba(255, 255, 255, 0.7);
            --glass-border: rgba(255, 255, 255, 0.5);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
        }

        body {
            background-color: var(--bg-base);
            color: var(--text-main);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            overflow: hidden;
            position: relative;
            padding: 20px;
        }

        /* --- Advanced Animated Background --- */
        .ambient-bg {
            position: absolute;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            overflow: hidden;
            z-index: 0;
        }

        .orb {
            position: absolute;
            border-radius: 50%;
            filter: blur(80px);
            opacity: 0.6;
            animation: float 20s infinite ease-in-out alternate;
        }

        .orb-1 {
            width: 400px;
            height: 400px;
            background: #d4e4ff;
            top: -10%;
            left: -10%;
            animation-delay: 0s;
        }

        .orb-2 {
            width: 300px;
            height: 300px;
            background: #e0f7fa;
            bottom: -10%;
            right: -5%;
            animation-delay: -5s;
        }

        @keyframes float {
            0% { transform: translate(0, 0) scale(1); }
            50% { transform: translate(50px, 30px) scale(1.1); }
            100% { transform: translate(-30px, 50px) scale(0.9); }
        }

        /* --- Glassmorphism Card (Highly Responsive) --- */
        .glass-card {
            position: relative;
            z-index: 1;
            background: var(--glass-bg);
            backdrop-filter: blur(25px);
            -webkit-backdrop-filter: blur(25px);
            border: 1px solid var(--glass-border);
            border-radius: 30px;
            padding: clamp(30px, 6vw, 60px); /* Fluid padding */
            width: 100%;
            max-width: 550px;
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.05), inset 0 0 0 1px rgba(255, 255, 255, 0.8);
            text-align: center;
            
            /* Entrance Animation */
            opacity: 0;
            transform: translateY(30px) scale(0.95);
            animation: cardEntrance 1s cubic-bezier(0.16, 1, 0.3, 1) forwards;
        }

        @keyframes cardEntrance {
            to { opacity: 1; transform: translateY(0) scale(1); }
        }

        /* --- Logo Animations --- */
        .logo-ring {
            position: relative;
            width: clamp(120px, 20vw, 160px); /* Fluid sizing */
            height: clamp(120px, 20vw, 160px);
            margin: 0 auto 35px auto;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
            background: #ffffff;
            box-shadow: 0 10px 30px rgba(0, 75, 135, 0.08);
        }

        .logo-ring::before {
            content: '';
            position: absolute;
            top: -5px; left: -5px; right: -5px; bottom: -5px;
            border-radius: 50%;
            background: linear-gradient(45deg, transparent, var(--brand-light), var(--brand-blue), transparent);
            z-index: -1;
            animation: spinRing 4s linear infinite;
        }

        @keyframes spinRing {
            100% { transform: rotate(360deg); }
        }

        .logo-ring img {
            width: 75%;
            height: 75%;
            object-fit: contain;
            animation: gentlePulse 3s infinite ease-in-out;
        }

        @keyframes gentlePulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.03); }
        }

        /* --- Typography --- */
        h1 {
            font-size: clamp(1.75rem, 4vw, 2.5rem); /* Fluid typography */
            font-weight: 700;
            color: var(--brand-blue);
            margin-bottom: 15px;
            letter-spacing: -0.02em;
        }

        p {
            font-size: clamp(0.95rem, 2vw, 1.1rem);
            line-height: 1.5;
            color: var(--text-secondary);
            margin-bottom: 40px;
            max-width: 90%;
            margin-left: auto;
            margin-right: auto;
        }

        /* --- Multi-step Loading Indicator --- */
        .loader-container {
            background: rgba(255, 255, 255, 0.5);
            border-radius: 15px;
            padding: 20px;
            border: 1px solid rgba(0,0,0,0.03);
        }

        .progress-track {
            width: 100%;
            height: 6px;
            background: rgba(0, 75, 135, 0.1);
            border-radius: 10px;
            overflow: hidden;
            margin-bottom: 12px;
        }

        .progress-fill {
            height: 100%;
            width: 0%;
            background: linear-gradient(90deg, var(--brand-blue), #00c6ff);
            border-radius: 10px;
            transition: width 0.5s cubic-bezier(0.4, 0, 0.2, 1);
        }

        .status-text {
            font-size: 0.85rem;
            font-weight: 600;
            color: var(--brand-blue);
            min-height: 20px; /* Prevents layout jump */
        }

        .fade-text {
            animation: textUpdate 0.5s ease-in-out;
        }

        @keyframes textUpdate {
            0% { opacity: 0; transform: translateY(5px); }
            100% { opacity: 1; transform: translateY(0); }
        }

    </style>
</head>
<body>

    <div class="ambient-bg">
        <div class="orb orb-1"></div>
        <div class="orb orb-2"></div>
    </div>

    <main class="glass-card">
        
        <div class="logo-ring">
            <img src="logo.jpg" alt="V Electronics">
        </div>

        <h1>Platform Optimization</h1>
        <p>We are upgrading our core infrastructure to bring you a faster, more robust experience. Systems will be back online shortly.</p>

        <div class="loader-container">
            <div class="progress-track">
                <div class="progress-fill" id="progress-fill"></div>
            </div>
            <div class="status-text" id="status-message">Initializing sequence...</div>
        </div>

    </main>

    <script>
        // Custom loading sequence tailored for V Electronics
        const statusMessages = [
            "Initializing sequence...",
            "Synchronizing robotics inventory...",
            "Calibrating 3D printing modules...",
            "Routing circuit pathways...",
            "Securing payment gateways...",
            "Finalizing platform deployment..."
        ];

        const progressFill = document.getElementById('progress-fill');
        const statusMessageEl = document.getElementById('status-message');
        
        let currentStep = 0;
        const totalSteps = statusMessages.length;

        function updateLoader() {
            if (currentStep < totalSteps) {
                // Update Progress Bar Width
                const percentage = ((currentStep + 1) / totalSteps) * 100;
                progressFill.style.width = `${percentage}%`;

                // Update Text with Animation
                statusMessageEl.classList.remove('fade-text');
                
                // Small delay to trigger DOM reflow for CSS animation restart
                void statusMessageEl.offsetWidth; 
                
                statusMessageEl.textContent = statusMessages[currentStep];
                statusMessageEl.classList.add('fade-text');

                currentStep++;
                
                // Random delay between 1.5s and 3s for a realistic loading feel
                const nextDelay = Math.random() * 1500 + 1500;
                setTimeout(updateLoader, nextDelay);
            } else {
                // Loop back or hold at 100%
                statusMessageEl.textContent = "Systems ready. Standing by...";
                // setTimeout(() => location.reload(), 2000); // Optional auto-refresh
            }
        }

        // Start animation after a short delay
        setTimeout(updateLoader, 1000);
    </script>
</body>
</html>
