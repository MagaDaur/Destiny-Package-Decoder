// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).zwxy;
    r4.xyzw = t0.Load(r0.w).zwxy;
    r0.y = saturate(r3.y);
    r5.xyz = r0.yyy * float3(0.099999994,-0.211480007,-2.07017493) + float3(0.150000006,1.28165495,1);
    r0.z = saturate(cb0[2].y + -2);
    r0.z = r0.z * 0.850000024 + 0.150000006;
    r6.y = r5.x * r0.z;
    r0.z = r0.y * r0.y;
    r0.z = saturate(r5.y * r0.z + r5.z);
    r0.z = r0.z * 0.0199999996 + 0.00999999978;
    r0.w = saturate(r1.w);
    r5.xyzw = r0.wwww * float4(-11112,0.582009017,13.8000002,-1.57585704) + float4(679.599976,-0.0850849971,0,1.078933);
    r7.x = r0.w * r0.w;
    r5.xy = r5.xy * r7.xx + r5.zw;
    r7.yzw = cmp(r0.www >= float3(0,0.0500000007,1));
    r7.yzw = r7.yzw ? float3(1,1,1) : 0;
    r5.zw = r7.yz + r7.zw;
    r5.zw = float2(9.99999997e-007,9.99999997e-007) + r5.zw;
    r5.zw = float2(0.5,0.5) * r5.zw;
    r5.zw = frac(r5.zw);
    r5.xy = r5.zw * r5.xy;
    r5.xy = r5.xy + r5.xy;
    r5.x = saturate(r5.x + r5.y);
    r0.z = r5.x * r0.z;
    r5.x = saturate(cb0[2].y * 0.200000003 + -1);
    r5.x = r5.x * 0.75 + 0.25;
    r6.z = r5.x * r0.z;
    r0.z = saturate(r4.z);
    r5.xy = r0.zz * float2(0.167285994,8.22580528) + float2(0,-7.22580481);
    r7.yzw = cmp(r0.zzz >= float3(0,0.896667004,1));
    r8.xyw = r7.yzw ? float3(1,1,1) : 0;
    r7.yzw = r8.xyw + r8.yww;
    r7.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.yzw;
    r7.yzw = float3(0.5,0.5,0.5) * r7.yzw;
    r7.yzw = frac(r7.yzw);
    r5.xy = r7.yz * r5.xy;
    r5.xy = float2(2,2) * r5.xy;
    r0.z = r5.x + r5.y;
    r0.z = r7.w * 2 + r0.z;
    r0.z = saturate(r8.w * 1 + r0.z);
    r0.z = r0.z * 60 + 20;
    r5.xyzw = r0.wwww * float4(-54298.2422,141.07991,-0.335269004,0.893579006) + float4(2719.8833,-58.4868584,1.297948,-2.75621104);
    r7.y = 2.86263204 * r0.w;
    r8.xyz = r0.www * float3(-0.331395,3.42885804,-1.62956297) + float3(0,0.945465028,0.666884005);
    r5.xyz = r5.xyz * r7.xxx + r8.xyz;
    r8.xyzw = cmp(r0.wwww >= float4(0,0.0333329998,0.230000004,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r5.xyz = r8.xyz * r5.xyz;
    r5.xy = r5.xy + r5.xy;
    r0.w = r5.x + r5.y;
    r0.w = saturate(r5.z * 2 + r0.w);
    r6.w = r0.z * r0.w;
    r0.z = saturate(r5.w * r7.x + r7.y);
    r5.xyz = r0.yyy * float3(-0.148653001,-0.309273005,0) + float3(-0.233203992,-0.123270988,0);
    r5.xyz = r0.zzz * r5.xyz + float3(0.462076992,0.715692997,1);
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.w = r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r6.x = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r3.zw = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r3.xyzw
    r0.y = (int)r0.x + 5;
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}