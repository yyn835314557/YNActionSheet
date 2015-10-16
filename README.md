# YNActionSheet —— An elegant actionSheet in Swift 

***

**YNActionSheet is a custom actionSheet used on iOS, which implement by Swift.**

 ![YNActionSheet.gif](/Resource/YNActionSheet.gif)


### USAGE

```Swift
var actionSheetView = YNActionSheet()
actionSheetView.delegate = self
actionSheetView.addCancelButton("CancelName")
actionSheetView.addButtonWithTitle("titleName")
self.presentViewController(actionSheetView,animate:true,completion: nil)
```

### Installation

 - CocoaPods:

 	` pod 'YNActionSheet' `

 - Manually:

 	 Download the file YNActionSheet and then drag it to the project


### LICENSE 

 YNActionSheet is released under the MIT LICENSE.See License for details.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.