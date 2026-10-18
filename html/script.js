// Basic JavaScript for the house robbery UI

// Wait for the DOM to be ready
$(document).ready(function() {
    // Listen for NUI messages
    window.addEventListener('message', function(event) {
        var item = event.data;

        // Handle lockpicking UI
        if (item.type === 'lockpicking') {
            if (item.action === 'start') {
                $('#lockpicking-container').show();
                // Initialize lockpicking UI
            } else if (item.action === 'stop') {
                $('#lockpicking-container').hide();
            }
        }

        // Handle sound level UI
        if (item.type === 'soundlevel') {
            $('#soundlevel-container').show();
            var percentage = (item.level / item.maxLevel) * 100;
            $('#soundlevel-bar').css('width', percentage + '%');
        }
    });
});