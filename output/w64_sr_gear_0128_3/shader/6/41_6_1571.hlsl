// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[141];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = cb10[1].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb10[0].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.zw = (int2)r0.zw;
    r0.z = (int)r0.w + (int)r0.z;
    r0.w = (uint)vThreadID.x;
    r1.z = cb0[19].x + r0.w;
    r0.w = cb0[21].x + r1.z;
    r0.w = (uint)r0.w;
    r2.x = (int)r0.w ^ 61;
    r0.w = (uint)r0.w >> 16;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 9;
    r2.x = (uint)r0.w >> 4;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 0x27d4eb2d;
    r2.x = (uint)r0.w >> 15;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r3.yzw = float3(2.32830644e-010,2.32830644e-010,2.32830644e-010) * r2.xyz;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r4.x = 2.32830644e-010 * r2.z;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r2.x = r2.x * 8.73114914e-011 + 0.125;
    r5.xyz = r2.yyy * float3(2.32830664e-011,5.05092301e-010,4.10098587e-011) + float3(-0.150000006,0,0.823863983);
    r6.xyz = cmp(r2.yyy >= float3(0,1.77525171e+009,4.2949673e+009));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r2.yw = r6.xy + r6.yz;
    r2.yw = float2(9.99999997e-007,9.99999997e-007) + r2.yw;
    r2.yw = float2(0.5,0.5) * r2.yw;
    r2.yw = frac(r2.yw);
    r2.yw = r2.yw * r5.yz;
    r2.yw = float2(2,2) * r2.yw;
    r2.y = r2.y + r2.w;
    r2.y = 9.99999997e-007 + r2.y;
    r2.y = min(1, r2.y);
    r2.y = 0.075000003 * r2.y;
    r4.yz = float2(2.32830644e-010,3.32614873e-011) * r2.zz;
    r2.z = r2.z * 4.38448028e-011 + 0.668830991;
    r2.w = r4.y * r4.y;
    r2.z = r2.z * r2.w + r4.z;
    r3.x = r2.z * 1.25 + 1.75;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r6.x = r2.z * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r6.y = r2.z * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r6.z = r0.w * 4.65661287e-010 + -1;
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = rsqrt(r0.w);
    r5.yzw = r6.xyz * r0.www;
    r0.w = max(0.00100000005, r2.y);
    r2.yzw = r5.yzw * r0.www;
    r5.yzw = float3(1,0,0) * r2.xxx;
    r6.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r6.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r6.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r6.w = -r0.w;
    r7.xyz = cb9[r0.z+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.z+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r0.z+32].xyz + r6.xyz;
    r7.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r7.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r7.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.w;
    r8.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r7.xyz;
    r7.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = cb9[r0.y+32].wwww * r7.xyzw + r8.xyzw;
    r8.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r8.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r8.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r8.w = -r0.w;
    r9.xyz = cb9[r0.y+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.z+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.z+32].www * r8.xyz + r9.xyz;
    r8.xyz = r8.www * -cb9[r0.z+32].xyz + r8.xyz;
    r6.xyz = r8.xyz + -r6.xyz;
    r8.xyz = -r7.yzx * r2.wyz;
    r8.xyz = r2.zwy * -r7.zxy + -r8.xyz;
    r0.y = dot(r2.yzw, -r7.xyz);
    r8.w = -r0.y;
    r2.xyz = r7.www * r2.yzw;
    r2.w = 0;
    r2.xyzw = r8.xyzw + r2.xyzw;
    r8.xyz = r7.zxy * r2.yzx;
    r8.xyz = r7.yzx * r2.zxy + -r8.xyz;
    r2.xyz = r7.www * r2.xyz + r8.xyz;
    r2.xyz = r2.www * r7.xyz + r2.xyz;
    r2.xyz = r2.xyz + r6.xyz;
    r6.xyzw = -r7.zxyx * r5.wwyy;
    r8.xyz = -r5.wyw * -r7.yzx + r6.xyz;
    r8.w = -r6.w;
    r6.xyz = r7.www * r5.yzw;
    r6.w = 0;
    r6.xyzw = r8.xyzw + r6.xyzw;
    r5.yzw = r7.zxy * r6.yzx;
    r5.yzw = r7.yzx * r6.zxy + -r5.yzw;
    r5.yzw = r7.www * r6.xyz + r5.yzw;
    r5.yzw = r6.www * r7.xyz + r5.yzw;
    r5.xyz = cb0[140].xyz * r5.xxx + r5.yzw;
    r6.xyz = -cb9[r0.z+32].yzx * r2.zxy;
    r6.xyz = r2.yzx * -cb9[r0.z+32].zxy + -r6.xyz;
    r0.y = dot(r2.xyz, -cb9[r0.z+32].xyz);
    r6.w = -r0.y;
    r7.xyz = cb9[r0.z+32].www * r2.xyz;
    r7.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = cb9[r0.z+32].zxy * r6.yzx;
    r7.xyz = cb9[r0.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * cb9[r0.z+32].xyz + r6.xyz;
    r0.yzw = cb9[r0.z+0].xyz + r6.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r5.w = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r2.xyzw
    r1.xyw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r3.xyzw
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r4.xyzw
  }
  return;
}